<template>
  <MenuTitle :title="'NOS SELECTIONS'"/>

  <div id="banner">
    <div>
      <span class="banner-text l">Testez</span> <span> nos produits avec la</span>
    </div>
    <div>
      <span class="banner-text xl">Box découverte</span>
    </div>
  </div>

  <div class="vignettes-holder">
    <BoxVignette v-for="(item, index) of boxes" :key="index" :boxData="item" />
  </div>
</template>

<script>
import axios from 'axios';

import BoxVignette from "@/components/BoxVignette.vue";
import MenuTitle from "@/components/MenuTitle.vue";


export default {
  name: 'RecommandationsView',
  components: {
    BoxVignette,
    MenuTitle,
  },
  async mounted() {
    const result = await axios.get(`${process.env.VUE_APP_API_URL}/boxes`);
    this.boxes = result.data;
  },
  data() {
    return {
      boxes: [],
    }
  },
}
</script>

<style scoped>
#banner  {
  width: 100%;
  height: 340px;
  border-radius: 20px;
  background: #F0F0F0;
  margin-bottom: 40px;
}

.banner-text {
  color: #000;
  font-family: Inter;
  font-style: normal;
  line-height: normal;
}

.l {
  font-size: 32px;
  font-weight: 600;
}

.xl {
  font-size: 55px;
  font-weight: 600;
}

.vignettes-holder {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 10px;
  grid-auto-rows: minmax(100px, auto);
  height: 1000px;
}

</style>
