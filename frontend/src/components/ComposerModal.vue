<template>
  <VueFinalModal class="">
    <h1 class="">
      {{ title }}
    </h1>
    <slot />
    <button @click="() => $emit('confirm')">Confirm</button>
  </VueFinalModal>
</template>

<script>
import { VueFinalModal } from "vue-final-modal";

export default {
  name: "ComposerModal",
  components: {
    VueFinalModal,
  },
  props: {
    title: String,
    boxSize: String,
  },
  data() {
    return {
      ingredients: [],
      boxSize: "M", // "L" "XL"
      selectedIngredients: [],
    };
  },
  emits: ["confirm"],
  computed: {
    boxPrice() {
      return 99.99;
    },
    boxSlots() {
      if (this.boxSize == "M") {
        return 5;
      }
      if (this.boxSize == "L") {
        return 5;
      }
      if (this.boxSize == "XL") {
        return 5;
      }
    },
  },
};
</script>
