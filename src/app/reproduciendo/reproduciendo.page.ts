import { Component } from '@angular/core';

@Component({
  selector: 'app-reproduciendo',
  templateUrl: 'reproduciendo.page.html',
  styleUrls: ['reproduciendo.page.scss']
})
export class ReproduciendoPage {

  constructor() {}
  PlayMe() {
    let myVideo = <HTMLVideoElement> document.querySelector("#myVideo");
    myVideo.play();
  }

  PlayMeExternal() {
    let myVideo = <HTMLVideoElement> document.querySelector("#myVideo");
    window.open(myVideo.currentSrc, "_system");
  }

}
