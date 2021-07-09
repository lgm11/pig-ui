<template>
    <button class="pig-button" :class="`pig-theme-${theme}`">
        <slot />
    </button>   
</template>

<script lang="ts">
export default {
    props:{
        theme:{
            type:String,
            default:'button'
        }
    }
}
    
</script>