import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ReproduciendoPage } from './reproduciendo.page';

const routes: Routes = [
  {
    path: '',
    component: ReproduciendoPage,
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class ReproduciendoPageRoutingModule {}
