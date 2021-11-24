import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-session',
  templateUrl: './session.page.html',
  styleUrls: ['./session.page.scss'],
})
export class SessionPage implements OnInit {

  Titulo="Sesion Alumno";
  Rol="Alumno";
  Nombre="Luis Fernandez";
  Carrera="Ingenieria Informatica";

  constructor() { }

  ngOnInit() {
  }

}
