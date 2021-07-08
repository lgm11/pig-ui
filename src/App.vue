<template>
  <div></div>
  <router-view />
</template>

<script>
import { ref } from 'vue';
import { provide } from 'vue';
import { router } from './router'

export default {
  name: "App",
  setup(){
    const width = document.documentElement.clientWidth
    const asideVisible = ref(width <= 500 ? false : true)
    provide('asideVisible',asideVisible)
    router.afterEach(()=>{
      if(width <= 500){asideVisible.value = false}
    })
  }
}
</script>
