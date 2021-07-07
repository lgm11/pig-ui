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
    const asideVisible = ref(false)
    provide('asideVisible',asideVisible)
  }
}
</script>
