FROM node:15-alpine as builder
WORKDIR '/app'
COPY ./package.json ./

RUN apk add --no-cache --virtual .gyp \
        python3 \
        make \
        g++

        
RUN npm install
COPY . .
RUN npm run build


FROM nginx:alpine
COPY ./nginx/frontend.conf /etc/nginx/conf.d/configfile.template

COPY --from=builder /app/dist /usr/share/nginx/html

ENV PORT 4020
ENV HOST 0.0.0.0
EXPOSE 4020
CMD sh -c "envsubst '\$PORT' < /etc/nginx/conf.d/configfile.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"