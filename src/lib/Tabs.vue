<template>
    <div class="pig-tabs">
        <div class="pig-tabs-nav">
            <div class="pig-tabs-nav-item" v-for="(t,index) in title " :key="index">{{t}}</div>
        </div>
        <div class="pig-tabs-content">
            <component class="pig-tabs-content-item" v-for="(c,index) in defaults" :is="c" :key="index" />
        </div>
    </div>
</template>

<script lang="ts">
import Tab from './Tab.vue'
export default {
    setup(props,context){
        const defaults = context.slots.default()
        defaults.forEach((tag)=>{
            if(tag.type !== Tab){
                throw new Error('Tabs子标签必须是Tab')
            }
        })
        const title = defaults.map((tag)=>{return tag.props.title})
        return {defaults,title}
    }
}
</script>

<style lang="scss">
$blue: #40a9ff;
$color: #333;
$border-color: #d9d9d9;
.pig-tabs {
  &-nav {
    display: flex;
    color: $color;
    border-bottom: 1px solid $border-color;
    &-item {
      padding: 8px 0;
      margin: 0 16px;
      cursor: pointer;
      &:first-child {
        margin-left: 0;
      }
      &.selected {
        color: $blue;
      }
    }
  }
  &-content {
    padding: 8px 0;
  }
}
</style>