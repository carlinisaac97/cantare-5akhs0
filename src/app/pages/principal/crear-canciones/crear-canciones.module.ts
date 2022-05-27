import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { CrearCancionesPageRoutingModule } from './crear-canciones-routing.module';

import { CrearCancionesPage } from './crear-canciones.page';
import { HttpClientModule } from '@angular/common/http';
import { ComponentsModule } from 'src/app/components/components.module';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    CrearCancionesPageRoutingModule,
    ComponentsModule,
    ReactiveFormsModule,
    FormsModule,
    HttpClientModule
  ],
  declarations: [CrearCancionesPage]
})
export class CrearCancionesPageModule {}
