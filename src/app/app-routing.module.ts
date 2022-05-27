import { NgModule } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  {
    path: '',
    loadChildren: () => import('./tabs/tabs.module').then(m => m.TabsPageModule)
  },
  {
    path: 'login',
    loadChildren: () => import('./pages/login/login.module').then( m => m.LoginPageModule)
  },
  {
    path: 'registro',
    loadChildren: () => import('./pages/registro/registro.module').then( m => m.RegistroPageModule)
  },
  {
    path: 'recuperar',
    loadChildren: () => import('./pages/recuperar/recuperar.module').then( m => m.RecuperarPageModule)
  },
  {
    path: 'seleccion',
    loadChildren: () => import('./pages/seleccion/seleccion.module').then( m => m.SeleccionPageModule)
  },
  {
    path: 'terminos',
    loadChildren: () => import('./pages/terminos/terminos.module').then( m => m.TerminosPageModule)
  },
  {
    path: 'pedidos',
    loadChildren: () => import('./pages/pedidos/pedidos.module').then( m => m.PedidosPageModule)
  },
  {
    path: 'favoritas',
    loadChildren: () => import('./pages/favoritas/favoritas.module').then( m => m.FavoritasPageModule)
  },
  {
    path: 'canciones',
    loadChildren: () => import('./pages/canciones/canciones.module').then( m => m.CancionesPageModule)
  },
  {
    path: 'agregarmusicas',
    loadChildren: () => import('./pages/agregarmusicas/agregarmusicas.module').then( m => m.AgregarmusicasPageModule)
  },
  {
    path: 'perfil',
    loadChildren: () => import('./pages/perfil/perfil.module').then( m => m.PerfilPageModule)
  },
  {
    path: 'admin',
    loadChildren: () => import('./pages/admin/admin.module').then( m => m.AdminPageModule)
  },
  // {
  //   path: 'listar',
  //   loadChildren: () => import('./pages/admin/usuarios/listar/listar.module').then( m => m.ListarPageModule)
  // },
  {
    path: 'admin/usuarios/actualizar/:id',
    loadChildren: () => import('./pages/admin/usuarios/actualizar/actualizar.module').then( m => m.ActualizarPageModule)
  },
  {
    path: 'tabs/principal/actualizar-canciones/:id',
    loadChildren: () => import('./pages/principal/actualizar-canciones/actualizar-canciones.module').then( m => m.ActualizarCancionesPageModule)
  }


];
@NgModule({
  imports: [
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules })
  ],
  exports: [RouterModule]
})
export class AppRoutingModule {}
