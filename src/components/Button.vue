<template>
    <button @:click="created()" v-bind:style="{ background: color }" class="btn" >{{text}}</button>
    
</template>

<script>
export default {
  name: 'Button',
  props:{
      text:String,
      color:String,
  },
  methods:{
        sayHi(){
            console.log("inside button");
        },
        created(){
            console.log("component created");
        }, 
}
}

</script>

<style scoped>

</style>
