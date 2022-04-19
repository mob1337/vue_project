<template>
<i class="fas fa-times" style="float: right; color:red; margin:20px"></i>

<h1> {{ tasks.text }}</h1>
<h3> {{ tasks.day }} </h3>
</template>

<script>
export default {
    name:"Tasks",
    props:{
        tasks:Object,
    }
}

</script>

<style scoped>



</style>
