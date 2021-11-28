import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { PagQRPageRoutingModule } from './pag-qr-routing.module';

import { PagQRPage } from './pag-qr.page';
import { ComponentsModule } from 'src/app/components/components.module';

// Importamos el generador de códigos QR
import { NgxQRCodeModule } from 'ngx-qrcode2'; 

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    NgxQRCodeModule,
    PagQRPageRoutingModule,
    ComponentsModule
  ],
  declarations: [PagQRPage]
})
export class PagQRPageModule {}
