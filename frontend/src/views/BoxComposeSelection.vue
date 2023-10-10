<template>
  <MenuTitle :title="'COMPOSE TA BOX'" />

  <button type="button" @click="selectBoxSize('M')">Little Box (3 produits)</button>
  <button type="button" @click="selectBoxSize('L')">medium Box (5 produits)</button>
  <button type="button" @click="selectBoxSize('XL')">Big Box (7 produits)</button>

  <ComposerModal
    v-model="isComposing"
    :title="'Hello World!'"
    :boxSize="selectedBoxSize"
    @confirm="confirm()"
  >
    <p>VModel: The content of the modal</p>
  </ComposerModal>
</template>

<script>
import MenuTitle from "@/components/MenuTitle.vue";
import BoxComposer from "@/components/BoxComposer.vue";
import ComposerModal from '@/components/ComposerModal.vue';

export default {
  name: "BoxComposeSelection",
  components: {
    MenuTitle,
    BoxComposer,
    ComposerModal,
  },
  data() {
    return {
      isComposing: false,
      selectedBoxSize: null
    };
  },
  methods: {
    selectBoxSize(size) {
      this.selectedBoxSize = size;
      this.isComposing = true;
    },
    confirm() {
      this.isComposing = false;
    },
  },
};
</script>