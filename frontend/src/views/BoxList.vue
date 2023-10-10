<template>
  <MenuTitle :title="'NOS BOX'"/>
  <div class="vignettes-holder">
    <BoxVignette v-for="(item, index) of boxes" :key="index" :boxData="item" />
  </div>
</template>


<script>
import BoxVignette from "@/components/BoxVignette.vue";
import MenuTitle from "@/components/MenuTitle.vue";

export default {
  name: "BoxList",
  components: {
    BoxVignette,
    MenuTitle,
  },
  data() {
    return {
      boxes: [
        {
          id: 1,
          name: "La classica",
          content: ["Mâcon village AOP", "Comté fruité", "Anis de flavigny"],
          price: 17.95,
        },
        {
          id: 2,
          name: "La spéciale",
          content: [
            "Crème de cassis 'Chez Robert'",
            "Mont-d'or AOP",
            "Moutarde",
          ],
          price: 17.95,
        },
        {
          id: 3,
          name: "La spéciale",
          content: [
            "Crème de cassis 'Chez Robert'",
            "Mont-d'or AOP",
            "Moutarde",
          ],
          price: 17.95,
        },
        {
          id: 4,
          name: "La spéciale",
          content: [
            "Crème de cassis 'Chez Robert'",
            "Mont-d'or AOP",
            "Moutarde",
          ],
          price: 17.95,
        },
      ],
    };
  },
};
</script>

<style scoped>
.vignettes-holder {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 10px;
  grid-auto-rows: minmax(100px, auto);
  height: 1000px;
}
</style>