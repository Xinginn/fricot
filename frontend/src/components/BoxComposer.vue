<template>
  <div id="compose-modal-content" style="padding:8vh;">
    <div style="background-color: white;min-height:75vh;border-radius:20px;padding:16px;">
      <div class="d-flex justify-content-center">
        <!-- selected product slots -->
        <div class="slot-vignette zoomable" v-for="(item, index) of selectedProducts" :key="index" @click="removeProduct(index)">
          <div >
            <img class="slot-vignette-image" :src="getSrc(item)" alt=""  />
          </div>
          <div class="slot-vignette-body">
            <div class="slot-vignette-body-title">
            {{ item.label }}
            </div>
          </div>
        </div>

        <!-- empty product slots -->
        <div class="slot-vignette zoomable" v-for="(item, index) of Array(boxSlots - selectedProducts.length)" :key="index">
          
        </div>

      </div>
      <h3>Choisis tes produits</h3>
      <div class="d-flex flex-wrap">
        <!-- product item-->
        <ProductVignette v-for="(item, index) of products" :key="index"
          :productData="item"
          @click="addProduct(item)"
        >
        </ProductVignette>
        <!-- end product item-->
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";
import ProductVignette from './ProductVignette.vue';

export default {
  name: "BoxComposer",
  components: {
    ProductVignette,
  },
  async mounted() {
    const result = await axios.get(`${process.env.VUE_APP_API_URL}/products`);
    this.products = result.data;
  },
  props: {
    boxSize: String,
  },
  data() {
    return {
      products: [],
      selectedProducts: [],
    };
  },
  computed: {
    boxPrice() {
      return 99.99;
    },
    boxSlots() {
      if (this.boxSize == "M") {
        return 3;
      }
      if (this.boxSize == "L") {
        return 5;
      }
      if (this.boxSize == "XL") {
        return 7;
      }
    },
  },
  methods: {
    getSrc(product) {
      console.log(product)
      return require(`../assets/${product.image}.png`);
    },
    addProduct(product) {
      if (this.selectedProducts.length >= this.boxSlots) {
        return;
      }
      this.selectedProducts.push(product);
    },
    removeProduct(index) {
      this.selectedProducts.splice(index, 1);
    }
  },
};
</script>

<style scoped>
.slot-vignette {
  width: 180px;
  height: 180px;
  border-radius: 20px;
  background: #f0f0f0;
  display: flex;
  flex-direction: column;
  margin: 8px;
}

.slot-vignette-image {
  width: 180px;
  height: 130px;
  border-radius: 20px 20px 0px 0px;
}

.slot-vignette-body {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: space-between;
  flex-grow: 1;
  padding: 8px;
}

.slot-vignette-body-title {
  color: #000;
  font-family: Inter;
  font-size: 18px;
  font-style: normal;
  font-weight: 500;
  line-height: normal;
}

</style>
