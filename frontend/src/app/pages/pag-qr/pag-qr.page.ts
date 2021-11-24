import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-pag-qr',
  templateUrl: './pag-qr.page.html',
  styleUrls: ['./pag-qr.page.scss'],
})
export class PagQRPage implements OnInit {

  Titulo = "Escaneo QR";
  Rol = "Alumno";
  Carrera = "Ingenieria Informática";
  Nombre = "Luis Fernandez";
  constructor() { }

  ngOnInit() {
  }

}
