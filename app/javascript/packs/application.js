// import { testFunction } from '../components/scroll';
import "bootstrap";
import $ from 'jquery';
import { createSlider } from '../components/price-slider';
import { initSweetalert } from '../components/init_sweetalert';
window.$ = $;
window.jQuery = $;

createSlider();

initSweetalert('#sweet-alert-demo', {
  title: "A nice alert",
  text: "If you are happy with the trade just press OK",
  icon: "success"
});
