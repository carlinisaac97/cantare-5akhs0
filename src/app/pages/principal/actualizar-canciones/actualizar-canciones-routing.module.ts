import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ActualizarCancionesPage } from './actualizar-canciones.page';



const routes: Routes = [
  {
    path: '',
    component: ActualizarCancionesPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class ActualizarCancionesPageRoutingModule {}
