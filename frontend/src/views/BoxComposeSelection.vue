<template>
  <MenuTitle :title="'COMPOSE TA BOX'" />
  
  <div class="d-flex justify-content-around">
    <BoxVignetteLarge :size="'M'" @click="selectBoxSize('M')" />
    <BoxVignetteLarge :size="'L'" @click="selectBoxSize('L')" />
    <BoxVignetteLarge :size="'XL'" @click="selectBoxSize('XL')" />
  </div>


  <ComposerModal
    v-model="isComposing"
    :title="''"
    @confirm="confirm()"
  >
    <BoxComposer :boxSize="selectedBoxSize" />
  </ComposerModal>
</template>

<script>
import MenuTitle from "@/components/MenuTitle.vue";
import BoxComposer from "@/components/BoxComposer.vue";
import ComposerModal from '@/components/ComposerModal.vue';
import BoxVignetteLarge from '@/components/BoxVignetteLarge.vue';

export default {
  name: "BoxComposeSelection",
  components: {
    MenuTitle,
    BoxComposer,
    ComposerModal,
    BoxVignetteLarge,
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