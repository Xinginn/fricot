<template>
  <div style="margin-bottom: 40px">
    <hr />
    <div id="menu-title">{{ title }}</div>
    <hr />
  </div>
</template>

<script>
export default {
  name: "MenuTitle",
  props: {
    title: String,
  },
};
</script>

<style scoped>
#menu-title {
  color: #000;
  font-family: Inter;
  font-size: 64px;
  font-style: normal;
  font-weight: 600;
  line-height: normal;
}

hr {
  width: 100;
  margin: 0;
  padding: 0;
  color: black;
}
</style>
