<template>
    <div>
        <h1>Switch 组件示例 </h1>
        <Demo :component="Switch1Demo" />
        <Demo :component="Switch2Demo" />
    </div>
    <br/><br/>
    <p>注意：代码示例中引入Switch组件的路径需按照自身的需求更改,默认的文件路径为pig-ui-1</p>
</template>

<script lang="ts">
import { ref } from 'vue'
import Switch1Demo from './Switch1.demo.vue'
import Switch2Demo from './Switch2.demo.vue'

import Demo from './Demo.vue'
const Prism = (window as any).Prism
export default {
    components:{Demo},
    setup(){
        const bool = ref(false)
        return {Switch1Demo,Switch2Demo}
    }
}
</script>

