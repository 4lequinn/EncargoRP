import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { PagQRPage } from './pag-qr.page';

const routes: Routes = [
  {
    path: '',
    component: PagQRPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class PagQRPageRoutingModule {}
