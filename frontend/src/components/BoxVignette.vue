<template>
  <div class="box-vignette zoomable">
    <div >
      <img class="box-vignette-image" :src="getSrc" alt=""  />
    </div>
    <div class="box-vignette-body">
      <div class="box-vignette-body-title">
        {{ boxData.label }}
      </div>
      <div class="box-vignette-body-content">
        {{ getContent }}
      </div>
      <div class="box-vignette-body-price">
        {{ boxData.price.toFixed(2) }} €
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "BoxVignette",
  props: {
    boxData: Object,
  },
  computed: {
    getContent() {
      return this.boxData.boxContent.reduce((stack, current) => {
        const text = (current.quantity > 1) ? `${current.quantity} ${current.product.label}` : `${current.product.label}`;
        return (stack === "") ?` ${text}` : `${stack}, ${text}`;
      }, "");
    },
    getSrc() {
      return require(`../assets/${this.boxData.image}.png`)
    }
  },
};
</script>

<style scoped>
.box-vignette {
  width: 300px;
  height: 340px;
  border-radius: 20px;
  background: #f0f0f0;
  display: flex;
  flex-direction: column;
}


.box-vignette-image {
  width: 300px;
  height: 215px;
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