<template>
  <aside id="side-panel" class="">
    <hr />
    <router-link class="side-link" to="/">Nos box signatures</router-link>
    <hr />
    <router-link class="side-link" to="/compose">Compose ta box</router-link>
    <hr />
    <router-link class="side-link" to="/recommand">Nos sélections</router-link>
    <hr />
  </aside>
</template>

<script>
export default {
  name: "SidePanel",
};
</script>

<style scoped>
#side-panel {
  width: 420px;
  height: 100%;
  background: none;
  display: flex;
  flex-direction: column;
  align-items: center;
  position: fixed;
  top: 152px;
  left: 0;
  padding: 0px 40px;
}

hr {
  width: 100%;
  color: black;
  padding: 0;
  margin: 0;
}

.side-link,
.side-link:visited {
  color: #000;
  font-family: Inter;
  font-size: 24px;
  font-style: normal;
  font-weight: 500;
  line-height: normal;
  padding: 35px 0px;
  width: 100%;
  text-decoration: none;
  background-color: transparent;
  transition: background-color 0.5s;
}
.side-link:hover {
  background-color: rgb(150, 150, 150);
}
</style>
