<template>
    <button @click="toggle" :class="{'pig-checked':value}" class="pig-switch"><span></span></button>
</template>

<script>
import { ref } from 'vue'

export default {
    props:{
        value:Boolean
    },
    setup(props,context) {
        const toggle = ()=>{
            context.emit('update:value',!props.value)
        }
        return {toggle}
    },
}
</script>

<style lang="scss">
    $h: 22px;
    $h2: $h - 4px;
  .pig-switch{
    height: $h;
    width: $h*2;
    border: none;
    background: #bfbfbf;
    border-radius: $h/2;
    position: relative;
    > span{
        position: absolute;
        top: 2px;
        left: 2px;
        height: $h2;
        width: $h2;
        background:white;
        border-radius: $h2 / 2;
        transition: all 250ms;
    }
  }
  
  .pig-checked.pig-checked{
      background: #1890ff;
  }
  .pig-switch.pig-checked > span{
      left: calc(100% - #{$h2} - 2px);
  }
  .pig-switch:focus{
      outline: none;
  }
  .pig-switch:active{
    > span {width: $h2 + 4px;}
  }
  .pig-switch.pig-checked:active{
    > span {width: $h2 + 4px; margin-left: -4px;}
  }
</style>