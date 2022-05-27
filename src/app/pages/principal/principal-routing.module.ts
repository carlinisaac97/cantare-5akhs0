import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { PrincipalPage } from './principal.page';

const routes: Routes = [
  {
    path: '',
    component: PrincipalPage,
  },
  {
    path: 'actualizar-canciones',
    loadChildren: () => import('./actualizar-canciones/actualizar-canciones.module').then( m=> m.ActualizarCancionesPageModule)
  },
  {
    path: 'crear-canciones',
    loadChildren: () => import('./crear-canciones/crear-canciones.module').then( m => m.CrearCancionesPageModule)
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class PrincipalPageRoutingModule {}
