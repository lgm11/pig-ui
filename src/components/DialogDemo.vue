<template>
    <h1>
        Dialog示例
    </h1>
    <Demo :component="Dialog1Demo" />
    <Demo :component="Dialog2Demo" />
    <br/><br/>
    <p>注意：代码示例中引入Switch组件的路径需按照自身的需求更改,默认的文件路径为pig-ui-1</p>
</template>

<script lang="ts">
import Demo from './Demo.vue';
import Dialog1Demo from './Dialog1.demo.vue';
import Dialog2Demo from './Dialog2.demo.vue';
export default {
  components: {
          Demo
  },
  setup() {
      return {
      Dialog1Demo,
      Dialog2Demo
    }
  }
}
</script>