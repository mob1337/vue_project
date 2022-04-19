<template>
  <div class="container">
    <Header title="Task Tracker"/>
    <Task :tasks="task" />
      </div>
</template>

<script>
//usually data will put in app we want to state to be in app.vue
//import HelloWorld from './components/HelloWorld.vue'
// here we are using created which runs at rendring the template
// data is just data
// in method we use this to always point to the current Vue instance.
// to invoke a method means executing a method

import Header from './components/Header.vue';
import Task from './components/Task.vue';
export default {
  name: 'App',
  components: {
    //HelloWorld
    Header,
    Task,
  },
  data(){
    return {
      task: [],

    }
  },

   created(){
//we want task component to render is on the page
    this.task=[
      {
      id:1,
      text:'doctor appointment',
      day:'march 1st at 1:30pm',
      reminder: true,
    },
    {
      id:2,
      text:'Work on coding',
      day:'march 2st at 4:30pm',
      reminder: true,
    },
    {
      id:3,
      text:'Feed Fish',
      day:'march 13th at 7:30pm',
      reminder: true,
    },
    {
      id:4,
      text:'Feed Dog',
      day:'march 15st at 8:30pm',
      reminder: true,
    },
      

    ]
  }
  }

</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
div.groove {
    border-style: groove;
    }


</style>
