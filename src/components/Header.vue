<template>
    <header>
        <h1>{{title}}</h1>
        <Button text="Add Task" color="green" v-on:click="addTask()" />
       
    </header>
    
</template>

<script>

import Button from './Button.vue';

export default{
    name: 'Header',
    props: {
        title:String,
    },
    components:{
        Button
    },

    methods:{
        addTask(){
            const data=document.createElement('h1');
            console.log(data);
        },
        updateTask(){
            console.log("Task Updated")
        },
        deleteTask(){
            console.log("Task deleted")
        }
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
