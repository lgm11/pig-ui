<template>
    <div>Button事例</div>
    <h1>事例1</h1>
    <div>
        <Button>按钮</Button>
        <Button theme="button">按钮</Button>
        <Button theme="link">按钮</Button>
        <Button theme="text">按钮</Button>
    </div>
</template>

<script lang="ts">
import Button from '../lib/Button.vue'
export default {
    components:{Button},
    setup(){
        const onClick =() =>{
            console.log('hi');
        }
        return {onClick}
    }
}
</script>