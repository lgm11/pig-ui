<template>
    <h1>Tabs示例</h1>
    <Demo :component="Tabs1Demo" />
    <br/><br/>
    <p>注意：代码示例中引入Switch组件的路径需按照自身的需求更改,默认的文件路径为pig-ui-1</p>
</template>

<script lang="ts">

import Demo from './Demo.vue'
import Tabs1Demo from './Tabs1.demo.vue'
export default {
    components:{Demo},
    setup(){
        return {Tabs1Demo}
    }
}
</script>