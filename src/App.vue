<template>
  <div></div>
  <router-view />
</template>

<script>
import { ref } from 'vue';
import { provide } from 'vue';

export default {
  name: "App",
  setup(){
    const width = document.documentElement.clientWidth
    const asideVisible = ref(width <= 500 ? false : true)
    provide('asideVisible',asideVisible)
  }
}
</script>
