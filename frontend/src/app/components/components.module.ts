import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { IonicModule } from '@ionic/angular';
import { EncabezadoComponent } from './encabezado/encabezado.component';
import { PiePagComponent } from './pie-pag/pie-pag.component';
import { EniconComponent } from './enicon/enicon.component';


@NgModule({
  declarations: [
    EncabezadoComponent,
    PiePagComponent,
    EniconComponent
  ],
  imports: [
    CommonModule,
    IonicModule
  ],
  exports:[
    EncabezadoComponent,
    PiePagComponent,
    EniconComponent
  ]
})
export class ComponentsModule { }
