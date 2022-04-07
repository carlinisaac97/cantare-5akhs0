import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { TabsPage } from './tabs.page';

const routes: Routes = [
  {
    path: 'tabs',
    component: TabsPage,
    children: [
      {
        path: 'principal',
        loadChildren: () => import('../pages/principal/principal.module').then(m => m.PrincipalPageModule)
      },
      {
        path: 'reproduciendo',
        loadChildren: () => import('../pages/reproduciendo/reproduciendo.module').then(m => m.ReproduciendoPageModule)
      },
      {
        path: 'nosotros',
        loadChildren: () => import('../pages/nosotros/nosotros.module').then(m => m.NosotrosPageModule)
      },
      {
        path: '',
        redirectTo: '/tabs/principal',
        pathMatch: 'full'
      }
    ]
  },
  {
    path: '',
    redirectTo: '/login',
    pathMatch: 'full'
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
})
export class TabsPageRoutingModule {}
