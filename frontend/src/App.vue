<template>
  <ModalsContainer />
  <NavBar />
  <SidePanel />
  <MainView />
</template>

<script>
import SidePanel from "./components/SidePanel.vue";
import MainView from "./components/MainView.vue";
import NavBar from "./components/NavBar.vue";
import { ModalsContainer } from 'vue-final-modal'

export default {
  components: {
    SidePanel,
    MainView,
    ModalsContainer,
    NavBar,
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

.zoomable {
  transform: scale(1.0);
  transition: transform 0.3s;
  cursor: pointer;
}
.zoomable:hover {
  transform: scale(1.2);
}
</style>
