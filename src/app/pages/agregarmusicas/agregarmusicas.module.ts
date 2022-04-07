import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { AgregarmusicasPageRoutingModule } from './agregarmusicas-routing.module';

import { AgregarmusicasPage } from './agregarmusicas.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    AgregarmusicasPageRoutingModule
  ],
  declarations: [AgregarmusicasPage]
})
export class AgregarmusicasPageModule {}
