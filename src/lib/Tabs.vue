<template>
    <div class="pig-tabs">
        <div class="pig-tabs-nav" ref="container">
            <div class="pig-tabs-nav-item" :class="{selected:t===selected}" @click="select(t)" v-for="(t,index) in title " :ref="el=>{if(el)navItems[index]=el}" :key="index">{{t}}</div>
            <div class="pig-tabs-nav-indicator" ref="indicator"></div>
        </div>
        <div class="pig-tabs-content">
            <component class="pig-tabs-content-item" :class="{selected:c.props.title===selected}" v-for="(c,index) in defaults" :is="c" :key="index" />
        </div>
    </div>
</template>

<script lang="ts">
import { onMounted, onUpdated, ref, watchEffect } from 'vue'
import Tab from './Tab.vue'
export default {
    props:{
        selected:{
            type:String
        }
    },
    setup(props,context){
        const navItems = ref<HTMLDivElement[]>([])
        const indicator = ref<HTMLDivElement>(null)
        const container = ref<HTMLDivElement>(null)
        const x =()=>{
            const divs = navItems.value
            const result = divs.filter(div=>div.classList.contains('selected'))[0]
            const {width} = result.getBoundingClientRect()
            indicator.value.style.width = width + 'px'
            const {left:left1} = container.value.getBoundingClientRect()
            const {left:left2} = result.getBoundingClientRect()
            const left = left2 - left1
            indicator.value.style.left = left + 'px'
        }
        onMounted(x)
        onUpdated(x)
        const defaults = context.slots.default()
        defaults.forEach((tag)=>{
            if(tag.type !== Tab){
                throw new Error('Tabs子标签必须是Tab')
            }
        })
        const title = defaults.map((tag)=>{return tag.props.title})
        const select = (title:string)=>{
            context.emit('update:selected',title)
        }
        return {defaults,title,select,navItems,indicator,container}
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
    position: relative;
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
    &-indicator {
      position: absolute;
      height: 3px;
      background: $blue;
      left: 0;
      bottom: -1px;
      width: 100px;
      transition: all 250ms;
    }
  }
  &-content {
    padding: 8px 0;
    &-item {
      display: none;
      &.selected {
        display: block;
      }
    }
  }
}
</style>