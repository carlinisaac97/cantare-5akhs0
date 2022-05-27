import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { ActualizarCancionesPageRoutingModule } from './actualizar-canciones-routing.module';

import { ActualizarCancionesPage } from './actualizar-canciones.page';

import { HttpClientModule } from '@angular/common/http';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    ActualizarCancionesPageRoutingModule,
    FormsModule,
    ReactiveFormsModule,
    HttpClientModule
  ],
  declarations: [ActualizarCancionesPage]
})
export class ActualizarCancionesPageModule {}
