import { NgModule } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';
import { IntroGuard } from './guards/intro.guard';
import { AutoLoginGuard } from './guards/auto-login.guard';
import { AuthGuard } from 'src/app/guards/auth.guard';

const routes: Routes = [
  {
    path: '',
    loadChildren: () =>
      import('./tabs/tabs.module').then((m) => m.TabsPageModule),
  },
  {
    path: 'login',
    loadChildren: () =>
      import('./pages/login/login.module').then((m) => m.LoginPageModule),
    canLoad: [IntroGuard, AutoLoginGuard],
  },
  {
    path: 'registro',
    loadChildren: () =>
      import('./pages/registro/registro.module').then(
        (m) => m.RegistroPageModule
      ),
  },
  {
    path: 'recuperar',
    loadChildren: () =>
      import('./pages/recuperar/recuperar.module').then(
        (m) => m.RecuperarPageModule
      ),
  },
  {
    path: 'seleccion/:id',
    loadChildren: () =>
      import('./pages/seleccion/seleccion.module').then(
        (m) => m.SeleccionPageModule
      ),
    canLoad: [AuthGuard],
  },
  {
    path: 'terminos',
    loadChildren: () =>
      import('./pages/terminos/terminos.module').then(
        (m) => m.TerminosPageModule
      ),
    canLoad: [AuthGuard],
  },
  {
    path: 'pedidos',
    loadChildren: () =>
      import('./pages/pedidos/pedidos.module').then((m) => m.PedidosPageModule),
    canLoad: [AuthGuard],
  },
  {
    path: 'favoritas',
    loadChildren: () =>
      import('./pages/favoritas/favoritas.module').then(
        (m) => m.FavoritasPageModule
      ),
    canLoad: [AuthGuard],
  },
  {
    path: 'canciones',
    loadChildren: () =>
      import('./pages/canciones/canciones.module').then(
        (m) => m.CancionesPageModule
      ),
    canLoad: [AuthGuard],
  },
  {
    path: 'agregarmusicas',
    loadChildren: () =>
      import('./pages/agregarmusicas/agregarmusicas.module').then(
        (m) => m.AgregarmusicasPageModule
      ),
    canLoad: [AuthGuard],
  },
  {
    path: 'perfil',
    loadChildren: () =>
      import('./pages/perfil/perfil.module').then((m) => m.PerfilPageModule),
    canLoad: [AuthGuard],
  },
  {
    path: 'admin',
    loadChildren: () =>
      import('./pages/admin/admin.module').then((m) => m.AdminPageModule),
    canLoad: [AuthGuard],
  },
  // {
  //   path: 'listar',
  //   loadChildren: () => import('./pages/admin/usuarios/listar/listar.module').then( m => m.ListarPageModule)
  // },
  {
    path: 'admin/usuarios/actualizar/:id',
    loadChildren: () =>
      import('./pages/admin/usuarios/actualizar/actualizar.module').then(
        (m) => m.ActualizarPageModule
      ),
    canLoad: [AuthGuard],
  },
  {
    path: 'tabs/principal/actualizar-canciones/:id',
    loadChildren: () =>
      import(
        './pages/principal/actualizar-canciones/actualizar-canciones.module'
      ).then((m) => m.ActualizarCancionesPageModule),
    canLoad: [AuthGuard],
  },
];
@NgModule({
  imports: [
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules }),
  ],
  exports: [RouterModule],
})
export class AppRoutingModule {}
