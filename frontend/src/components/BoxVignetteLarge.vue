<template>
  <div class="box-vignette zoomable">
    <div>
      <img class="box-vignette-image" :src="getSrc" alt=""  />
    </div>
    <div class="box-vignette-body">
      <div class="box-vignette-body-title">
        {{ getData.name }}
      </div>
      <div class="box-vignette-body-content">
        {{ getData.content }}
      </div>
      <div class="box-vignette-body-price">
        {{ getData.price }} €
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "BoxVignette",
  props: {
    size: String,
  },
  computed: {
    getData() {
      if (this.size === "M") {
        return {name: "Little Box", content: "(3 produits au choix)", price: "11,95"}
      }
      if (this.size === "L") {
        return {name: "Medium Box", content: "(5 produits au choix)", price: "15,95"}
      }
      if (this.size === "XL") {
        return {name: "Big Box", content: "(7 produits au choix)", price: "19,95"}
      }
    },
    getSrc() {
      return require(`../assets/wine_box1.png`)
    }
  },
};
</script>

<style scoped>
.box-vignette {
  width: 390px;
  height: 420px;
  border-radius: 20px;
  background: #f0f0f0;
  display: flex;
  flex-direction: column;
}

.box-vignette-image {
  width: 390px;
  height: 300px;
  object-fit: cover;
  border-radius: 20px 20px 0px 0px;
}

.box-vignette-body {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: space-between;
  flex-grow: 1;
  padding: 12px;
}

.box-vignette-body-title {
  color: #000;
  font-family: Inter;
  font-size: 24px;
  font-style: normal;
  font-weight: 500;
  line-height: normal;
}

.box-vignette-body-content {
  color: #000;
  font-family: Inter;
  font-size: 16px;
  font-style: normal;
  font-weight: 300;
  line-height: normal;
}

.box-vignette-body-price {
  color: #000;
  font-family: Inter;
  font-size: 24px;
  font-style: normal;
  font-weight: 300;
  line-height: normal;
}
</style>