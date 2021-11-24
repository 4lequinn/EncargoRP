import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-docente',
  templateUrl: './docente.page.html',
  styleUrls: ['./docente.page.scss'],
})
export class DocentePage implements OnInit {

  Titulo = "Sesion Profesor";
  Carrera = "Ingenieria Informatica";
  Rol = "Profesor";
  Nombre = "Francisco Juilette";

  constructor() { }

  ngOnInit() {
  }

}
