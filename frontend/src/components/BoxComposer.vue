<template>
  
</template>

<script>
export default {
  name: 'BoxComposer',
  mounted() {
  },
  data() {
    return {
      ingredients: [],
      boxSize: "M", // "L" "XL"
      selectedIngredients: [],
    };
  },
  computed: {
    boxPrice() {
      return 99.99;
    },
    boxSlots() {
      if (this.boxSize == "M") {
        return 5
      }
      if (this.boxSize == "L") {
        return 5
      }
      if (this.boxSize == "XL") {
        return 5
      }
    }
  },
}
</script>
