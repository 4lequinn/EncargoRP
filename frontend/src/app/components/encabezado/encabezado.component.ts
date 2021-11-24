import { Component, Input, OnInit } from '@angular/core';

@Component({
  selector: 'app-encabezado',
  templateUrl: './encabezado.component.html',
  styleUrls: ['./encabezado.component.scss'],
})
export class EncabezadoComponent implements OnInit {
  
  // EL COMPONENTE RECIBE UN PARAMETRO QUE VA A SER EL TITULO
  @Input() pageTitle;

  constructor() { }

  ngOnInit() {}

}
