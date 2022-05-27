import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { PrincipalPageRoutingModule } from './principal-routing.module';
// import { ExploreContainerComponentModule } from '../../explore-container/explore-container.module';
import { PrincipalPage } from './principal.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    // ExploreContainerComponentModule,
    PrincipalPageRoutingModule,
  ],
  declarations: [PrincipalPage]
})
export class PrincipalPageModule {}
