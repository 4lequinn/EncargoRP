import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { alumnos } from '../alumnos.model'
import { AlertController } from '@ionic/angular';
import { AlumnosService } from 'src/app/services/alumnos.service';

@Component({
  selector: 'app-detalle-alumno',
  templateUrl: './detalle-alumno.page.html',
  styleUrls: ['./detalle-alumno.page.scss'],
})
export class DetalleAlumnoPage implements OnInit {


  alumnos: any = [];


  constructor(private alumnosService: AlumnosService, private alertController: AlertController, private router: Router) { }

   async deleteAlumno(id){
    //console.log(id);
    const alerta = await this.alertController.create( {
      header: 'Eliminando Alumno',
      message: 'Esta Seguro que Quiere Eliminar al Alumno??',
      buttons: [
        {
          text: 'Cancelar',
          role: 'cancel'
        },
        {
          text: 'Eliminar',
          handler: () => {
            this.alumnosService.deleteAlumnos(id).subscribe(
              (res) => {
                //console.log(res);
                this.router.navigate(["/alumnos"])
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

  buscarIndividual(id: String){
    this.alumnosService.detalleAlumno(id).subscribe( 
      (res) => {
        console.log(res);
        this.alumnos = res;
      },
      (err) => {
        console.log(err);
      }
    );
  }


  ngOnInit() {
    this.alumnosService.getAll().subscribe( 
      (res) => {
        console.log(res);
        this.alumnos = res;
      },
      (err) => {
        console.log(err);
      }
    );


  }

}
