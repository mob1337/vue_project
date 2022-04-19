<template>
    <div  v-bind:key="task.id"   v-for="task in tasks">
        <div class="groove">
            <Tasks :tasks="task" />     
        </div>
        </div>
</template>

<script>
import Tasks from './Tasks.vue';
export default{
    name:'Task',
    props:{
        tasks: Array,
    },
    components:{
        Tasks
    }
}
</script>

<style scoped>


</style>
