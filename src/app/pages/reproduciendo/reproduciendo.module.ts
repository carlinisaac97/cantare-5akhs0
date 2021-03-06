import { IonicModule } from '@ionic/angular';
import { RouterModule } from '@angular/router';
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { ReproduciendoPage } from './reproduciendo.page';

import { ReproduciendoPageRoutingModule } from './reproduciendo-routing.module';
import { ExploreContainerComponentModule } from '../../explore-container/explore-container.module';

@NgModule({
  imports: [
    IonicModule,
    CommonModule,
    FormsModule,
    ExploreContainerComponentModule,
    ReproduciendoPageRoutingModule
  ],
  declarations: [ReproduciendoPage]
})
export class ReproduciendoPageModule {}
