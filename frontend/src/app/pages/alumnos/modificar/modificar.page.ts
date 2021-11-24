import { Component, OnInit } from '@angular/core';
import { AlumnosService } from 'src/app/services/alumnos.service';

@Component({
  selector: 'app-modificar',
  templateUrl: './modificar.page.html',
  styleUrls: ['./modificar.page.scss'],
})
export class ModificarPage implements OnInit {

  
  constructor(private alumnosService: AlumnosService) { }

  ngOnInit() {
  }

  cambiarAlumnos(nombre, numero_lista, carrera,foto_alumno, presente) {
    //console.log(nombre.value, numero_lista.value, carrera.value,foto_alumno.value, presente.value)
    this.alumnosService.alterarAlumnos(nombre.value, numero_lista.value, carrera.value,foto_alumno.value, presente.value).subscribe(
      (res) => console.log(res),
      (err) => console.log(err)
    );

  }

}
