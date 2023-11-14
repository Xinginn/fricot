import { createApp } from 'vue';
import { createVfm } from 'vue-final-modal';
import App from './App.vue';
import router from './router';

import 'vue-final-modal/style.css';
import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap";

import { library } from '@fortawesome/fontawesome-svg-core';
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome';
import { faLocationDot, faStore, faUserSecret } from '@fortawesome/free-solid-svg-icons';

library.add(faUserSecret);
library.add(faStore);
library.add(faLocationDot);


const app = createApp(App);
const vfm = createVfm();

app.use(vfm);
app.use(router);
app.use(library)
app.component('font-awesome-icon', FontAwesomeIcon);

app.mount('#app');
