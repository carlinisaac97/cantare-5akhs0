import { IonicModule } from '@ionic/angular';
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { PrincipalPage } from './principal.page';

import { PrincipalPageRoutingModule } from './principal-routing.module';
import { ExploreContainerComponentModule } from '../../explore-container/explore-container.module';

@NgModule({
  imports: [
    IonicModule,
    CommonModule,
    FormsModule,
    ExploreContainerComponentModule,
    PrincipalPageRoutingModule,
    ReactiveFormsModule,
  ],
  declarations: [PrincipalPage]
})
export class PrincipalPageModule {}
