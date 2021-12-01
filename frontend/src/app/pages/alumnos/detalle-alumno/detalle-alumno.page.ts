import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { alumnos } from '../alumnos.model'
import { AlertController } from '@ionic/angular';
import { AlumnosService } from 'src/app/services/alumnos.service';
import { ApiServiceService } from 'src/app/services/api-service.service';
import { DetalleI } from 'src/app/components/model/DetalleAlumno';
import { AsistenciaI } from 'src/app/components/model/Asistencia';
import { AlumnoI } from 'src/app/components/model/Alumno';

@Component({
  selector: 'app-detalle-alumno',
  templateUrl: './detalle-alumno.page.html',
  styleUrls: ['./detalle-alumno.page.scss'],
})
export class DetalleAlumnoPage implements OnInit {

  // Modelo de alumno
  alumno: DetalleI;

  // alumno2
  alumno2 : AlumnoI;

  // ID 
  id : any;

  // USUARIO ID
  usuarioID : number;

  //Estados de asistencia PRESENTE - AUSENTE
  estados : boolean[] = [true , false];

  // Guardamos el valor elegido
  valorSeleccionado: string;

  // Modelo asistencia
  asistencia : AsistenciaI;


  constructor
    (
      private alumnosService: AlumnosService,
      private apiService: ApiServiceService,
      private alertController: AlertController,
      private router: Router,
      private activatedRoute : ActivatedRoute
  ) { }


  ngOnInit() {
    // Recibo el ID por URL
    this.id = this.activatedRoute.snapshot.paramMap.get("id");
    this.detalleAlumno(this.id);
  }



  valorCambiado(){
    // Método que captura el valor seleccionado actual del radio button
    console.log(this.valorSeleccionado);
  }

  detalleAlumno(id) {
    this.apiService.buscarAlumno(id).subscribe(
      (data) => {
        console.log(data);
        this.alumno = {
          alumnoID : data.id,
          nombre : data.nombre,
          apellido : data.apellido,
          ramo : data.ramos[0].descripcion,
          usuario : data.usuario.nombre_usuario,
          presente : data.presente
        }
        
        if(this.alumno.presente){
          this.valorSeleccionado = "presente";
        }else{
          this.valorSeleccionado = "ausente";
        }
        console.log('Valor seleccionado ' + this.valorSeleccionado);
      },
      (e) => {
        console.log('Error al cargar');
      }
    )
  }

  actualizar(id){
    var estado = false;
    // Capturar el estado de asistencia seleccionado 
    if(this.valorSeleccionado == "presente"){
      estado = true;
    }

    this.asistencia = {
      presente : estado
    }

    this.apiService.modificarAlumno(id, this.asistencia).subscribe(
      (data) => {
        console.log('Se actualizó la asistencia con éxito!');
        this.router.navigate(['/alumnos']);
      },
      (e) => {
        console.log('Error no se puede actualizar la asistencia');
      }
    )
  }

  async eliminarAlumno(id) {
    //console.log(id);
    const alerta = await this.alertController.create({
      header: 'Eliminar Alumno',
      message: '¿Está Seguro que quiere Eliminar al Alumno?',
      buttons: [
        {
          text: 'Cancelar',
          role: 'cancel'
        },
        {
          text: 'Eliminar',
          handler: () => {
            this.buscarAlumno(id);
            this.alumnosService.deleteAlumnos(id).subscribe(
              (res) => {
                //console.log(res);
                this.router.navigate(["/alumnos"]);

              },
              (err) => {
                console.log(err);
              }
            );
          }
        }
      ]
    });
    await alerta.present();

  }


  buscarAlumno(id){
    this.apiService.buscarAlumno(id).subscribe(
      (data) => {
        // Plantilla
        this.alumno2 = {
          nombre : data.nombre,
          apellido : data.apellido,
          presente : data.presente,
          ramos : data.ramos[0].id,
          usuario : data.usuario.id
        }

        // Eliminar usuario
        this.eliminarUsuario(this.alumno2.usuario);

      },
      (e) => {
        console.log('No se encontró');
      }
    )
  }

  eliminarUsuario(id){
    this.apiService.buscarUsuario(id).subscribe(
      (data) => {
        this.usuarioID = data.id;
        this.apiService.eliminarUsuario(this.usuarioID).subscribe(
          (data) => {
            console.log('Se eliminó con éxito!');
          },
          (e) => {
            console.log('No se pudo eliminar');
          }
        )
      },
      (e) => {
        console.log('No se pudo encontrar');
      }
    )
  }



}
