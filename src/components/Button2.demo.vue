<demo>
支持size
</demo>

<template>
<div>
  <div>
     <Button size="big">大按钮</Button>
     <Button >正常按钮</Button>
     <Button size="small">小按钮</Button>
  </div>
  <div>
    <Button theme="link" size="big">大按钮</Button>
    <Button theme="link">正常按钮</Button>
    <Button size="small" theme="link">小按钮</Button>
  </div>
  <div>
    <Button size="big" theme="text">大按钮</Button>
    <Button theme="text">正常按钮</Button>
    <Button size="small" theme="text">小按钮</Button>
  </div>
</div>
</template>

<script>
import Button from "../lib/Button.vue";
export default {
     components: {
    Button
  }
}
</script>