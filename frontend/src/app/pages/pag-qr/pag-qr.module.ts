import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { PagQRPageRoutingModule } from './pag-qr-routing.module';

import { PagQRPage } from './pag-qr.page';
import { ComponentsModule } from 'src/app/components/components.module';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    PagQRPageRoutingModule,
    ComponentsModule
  ],
  declarations: [PagQRPage]
})
export class PagQRPageModule {}
