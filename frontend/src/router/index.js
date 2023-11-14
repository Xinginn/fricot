import { createRouter, createWebHashHistory } from 'vue-router'
import BoxList from '../views/BoxList.vue';
import BoxComposeSelection from '../views/BoxComposeSelection.vue';
import RecommandationsView from '../views/RecommandationsView.vue';

const routes = [
  {
    path: '/',
    name: 'box-list',
    component: BoxList
  },
  {
    path: '/compose',
    name: 'compose',
    component: BoxComposeSelection
  },
  {
    path: '/recommand',
    name: 'recommand',
    component: RecommandationsView
  },
]

const router = createRouter({
  history: createWebHashHistory(),
  routes
})

export default router
