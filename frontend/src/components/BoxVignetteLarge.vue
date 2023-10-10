<template>
  <div class="box-vignette">
    <div class="box-vignette-image">
      <img :src="getSrc" alt=""  />
    </div>
    <div class="box-vignette-body">
      <div class="box-vignette-body-title">
        {{ boxData.name }}
      </div>
      <div class="box-vignette-body-content">
        {{ getContent }}
      </div>
      <div class="box-vignette-body-price">
        {{ boxData.price }} €
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
      return this.boxData.content.reduce((stack, current) => {
        return stack === "" ? `${current}` : `${stack}, ${current}`;
      }, "");
    },
    getSrc() {
      return require(`../assets/wine_box${this.boxData.id}.png`)
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
  border-radius: 20px 20px 0px 0px;
}

.box-vignette-image img {
  width: 300px;
  height: 215px;
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