import { Component, OnInit } from '@angular/core';
import { AlumnosService } from 'src/app/services/alumnos.service';


@Component({
  selector: 'app-agregar-alumnos',
  templateUrl: './agregar-alumnos.page.html',
  styleUrls: ['./agregar-alumnos.page.scss'],
})
export class AgregarAlumnosPage implements OnInit {


  constructor(private alumnosService: AlumnosService) { }

  ngOnInit() {
  }

  guardarAlumnos(nombre, numero_lista, carrera,foto_alumno, presente) {
    //console.log(nombre.value, numero_lista.value, carrera.value,foto_alumno.value, presente.value)
    this.alumnosService.createAlumnos(nombre.value, numero_lista.value, carrera.value,foto_alumno.value, presente.value).subscribe(
      (res) => console.log(res),
      (err) => console.log(err)
    );

  }


}
