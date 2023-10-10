<template>
  <ModalsContainer />
  <nav>
    This is a navbar
  </nav>
  <SidePanel />
  <MainView />
</template>

<script>
import SidePanel from "./components/SidePanel.vue";
import MainView from "./components/MainView.vue";
import { ModalsContainer } from 'vue-final-modal'

export default {
  components: {
    SidePanel,
    MainView,
    ModalsContainer,
  },
};
</script>


<style>
.skeleton {
  border: 1px solid red !important;
  box-sizing: border-box;
}

#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

nav {
  height: 80px;
  background-color: grey;
  margin-bottom: 62px;
}
</style>
