<template>
  <div>
    <h1>Button示例</h1>
    <Demo :component="Button1Demo" />
    <Demo :component="Button2Demo" />
    <Demo :component="Button3Demo" />
    <Demo :component="Button4Demo" />
    <Demo :component="Button5Demo" />
  </div>
  <br/><br/>
    <p>注意：代码示例中引入Switch组件的路径需按照自身的需求更改,默认的文件路径为pig-ui-1</p>
</template>

<script lang="ts">
import Demo from "./Demo.vue";
import Button1Demo from "./Button1.demo.vue";
import Button2Demo from "./Button2.demo.vue";
import Button3Demo from "./Button3.demo.vue";
import Button4Demo from "./Button4.demo.vue";
import Button5Demo from "./Button5.demo.vue";
export default {
    components:{Demo},
    setup(){ 
    return {Button1Demo,
      Button2Demo,
      Button3Demo,
      Button4Demo,
      Button5Demo}
    }
}
</script>