import { IonicModule } from '@ionic/angular';
import { RouterModule } from '@angular/router';
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { NosotrosPage } from './nosotros.page';
import { ExploreContainerComponentModule } from '../explore-container/explore-container.module';

import { NosotrosPageRoutingModule } from './nosotros-routing.module';
import { ComponentsModule } from '../components/components.module';

@NgModule({
  imports: [
    IonicModule,
    CommonModule,
    FormsModule,
    ExploreContainerComponentModule,
    RouterModule.forChild([{ path: '', component: NosotrosPage }]),
    NosotrosPageRoutingModule,
    ComponentsModule
  ],
  declarations: [NosotrosPage]
})
export class NosotrosPageModule {}
