import { Component, OnInit } from '@angular/core';
import { AlumnoI } from 'src/app/components/model/Alumno';
import { AlumnoI2 } from 'src/app/components/model/Aumno2';
import { Usuario2I } from 'src/app/components/model/Usuario2';
import { AlumnosService } from 'src/app/services/alumnos.service';
import { ApiServiceService } from 'src/app/services/api-service.service';


@Component({
  selector: 'app-agregar-alumnos',
  templateUrl: './agregar-alumnos.page.html',
  styleUrls: ['./agregar-alumnos.page.scss'],
})
export class AgregarAlumnosPage implements OnInit {

  // Variables
  nombreAlumno: string;
  apellidoAlumno: string;
  usuarioAlumno: string;

  // Modelo Usuario
  usuario: Usuario2I;

  // Modelo Alumno
  alumno: AlumnoI2;

  constructor
    (
      private alumnosService: AlumnosService,
      private apiService: ApiServiceService,
  ) { }

  ngOnInit() {
  }

  agregarAlumno() {
    // AGREGAR USUARIO Y AGREGAR ALUMNO

    // Creamos un usuario de tipo Alumno con la contraseña 12345 por defecto
    // y con el nombre asignado desde la interfaz
    this.usuario = {
      nombre_usuario: this.usuarioAlumno,
      contrasenia: "12345",
      tipo_usuario: "61a4307cc8105a1f281ece80",
      activo: true
    }


    this.apiService.agregarUsuario(this.usuario).subscribe(
      (data) => {
        console.log('Usuario agregado');
        // Buscamos el usuario agregado
        this.apiService.listarUsuarios().subscribe(
          (data) => {
            console.log(data);
            // Recorremos los usuarios
            for(let i = 0 ; i < data.length ; i++){
              if(this.usuarioAlumno == data[i].nombre_usuario){

                // Al encontrar el usuario agregamos el alumno
                // Creamos el modelo del alumno
                this.alumno = {
                  nombre : this.nombreAlumno,
                  apellido :this.apellidoAlumno,
                  presente : false,
                  ramos : ["61a42af8c8105a1f281ece7a"],
                  usuario : data[i].id
                }
                // Agregamos el alumno con la API
                this.apiService.agregarAlumno(this.alumno).subscribe(
                  (data) => {
                    console.log('Alumno agregado con éxito!');
                    this.limpiarCampos();
                  },
                  (e) => {
                    console.log('No se pudo agregar el alumno!');
                  }
                )

              }
            } 
          },
          (e) => {

          }
        )
      },
      (e) => {
        console.log('No se pudo agregar el usuario.');
      }
    )
  }


  limpiarCampos() {
    this.usuarioAlumno = "";
    this.nombreAlumno = "";
    this.apellidoAlumno = "";
  }

}
