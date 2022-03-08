import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { EnreproduccionPageRoutingModule } from './enreproduccion-routing.module';

import { EnreproduccionPage } from './enreproduccion.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    EnreproduccionPageRoutingModule
  ],
  declarations: [EnreproduccionPage]
})
export class EnreproduccionPageModule {}
