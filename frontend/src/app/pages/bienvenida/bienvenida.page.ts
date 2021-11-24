import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-bienvenida',
  templateUrl: './bienvenida.page.html',
  styleUrls: ['./bienvenida.page.scss'],
})
export class BienvenidaPage implements OnInit {

  Titulo = "Bienvenida";
  Rol = "Alumno";
  Nombre = "Luis Fernandez";

  constructor() { }

  ngOnInit() {
  }

}
