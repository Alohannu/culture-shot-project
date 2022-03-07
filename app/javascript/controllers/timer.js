import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["timer"]

connect(){
  console.log()
}
// var count = 4;
// function anim() {
//     if (count > 0) {
//         console.log(count);
//         count--;
//         setTimeout(anim, 700);
//     }
//     else {
//         console.log('hi')
//     }
// }
// anim();
