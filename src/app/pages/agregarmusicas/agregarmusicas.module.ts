import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { AgregarmusicasPageRoutingModule } from './agregarmusicas-routing.module';

import { AgregarmusicasPage } from './agregarmusicas.page';
import { HttpClientModule } from '@angular/common/http';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    AgregarmusicasPageRoutingModule,
    HttpClientModule,
    FormsModule, 
    ReactiveFormsModule
  ],
  declarations: [AgregarmusicasPage]
})
export class AgregarmusicasPageModule {}
