import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { AgregarmusicasPage } from './agregarmusicas.page';

const routes: Routes = [
  {
    path: '',
    component: AgregarmusicasPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class AgregarmusicasPageRoutingModule {}
