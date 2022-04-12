<template>
    <header>
        <h1>{{title}}</h1>
        <Button />
    </header>
    <body>
    </body>
    
</template>

<script>

import Button from './Button.vue';

export default{
    name: 'Header',
    props: ['title'],

    components:{
        Button
    }

}
</script>

<style scoped>
    header{
        display: flex;
        justify-content: space-between;
        margin-bottom: 20px;
    }

</style>
