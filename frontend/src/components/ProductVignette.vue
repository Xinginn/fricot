<template>
  <div class="product-vignette zoomable">
    <div >
      <img class="product-vignette-image" :src="getSrc()" alt=""  />
    </div>
    <div class="product-vignette-body">
      <div class="product-vignette-body-title">

        {{ productData.label }}
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "ProductVignette",
  props: {
    productData: Object
  },
  signals: [
    "productClicked"
  ],
  data() {
    return {
      src: "",
    }
  },
  methods: {
    getSrc() {
      if (!this.productData.image) {
        return require("../assets/default.png");
      }
      return require(`../assets/${this.productData.image}.png`);
    },
  }
}
</script>

<style scoped>
.product-vignette {
  width: 160px;
  height: 180px;
  border-radius: 20px;
  background: #f0f0f0;
  display: flex;
  flex-direction: column;
  margin: 8px;
}

.product-vignette-image {
  width: 160px;
  height: 120px;
  object-fit: cover;
  border-radius: 20px 20px 0px 0px;
}

.product-vignette-body {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: space-between;
  flex-grow: 1;
  padding: 8px;
}

.product-vignette-body-title {
  color: #000;
  font-family: Inter;
  font-size: 16px;
  font-style: normal;
  font-weight: 500;
  line-height: normal;
}

</style>