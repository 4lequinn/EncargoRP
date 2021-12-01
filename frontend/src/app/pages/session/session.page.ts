import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { BarcodeScanner } from '@ionic-native/barcode-scanner/ngx';
import { AsistenciaI } from 'src/app/components/model/Asistencia';
import { DetalleI } from 'src/app/components/model/DetalleAlumno';
import { ApiServiceService } from 'src/app/services/api-service.service';

@Component({
  selector: 'app-session',
  templateUrl: './session.page.html',
  styleUrls: ['./session.page.scss'],
})
export class SessionPage implements OnInit {

  Titulo="Sesion Alumno";
  Rol="Alumno";
  Nombre="";
  Carrera="Ingenieria Informatica";


  // Resultado del scan
  codigoScaneado = null;

  // Modelo alumno
  alumno : DetalleI;

  // Modelo asistencia
  asistencia : AsistenciaI;

  // Nombre usuario por parametro
  username : any;

  constructor
  (
    private activatedRoute : ActivatedRoute,
    private apiService : ApiServiceService,
    private barcodeScanner : BarcodeScanner
  )
  { }

  ngOnInit() {
    this.username = this.activatedRoute.snapshot.paramMap.get("username");
    this.buscarAlumno();
  }

  buscarAlumno(){
    this.apiService.listarAlumnos().subscribe(
      (data) =>{
        console.log(data);
        for(let i = 0; i < data.length ; i++){
          if(data[i].usuario.nombre_usuario == this.username){
            console.log('Encontrado!');
            this.alumno = {
              alumnoID : data[i].id,
              nombre : data[i].nombre,
              apellido : data[i].apellido,
              presente : data[i].presente,
              ramo : data[i].ramos[0].descripcion,
              usuario : this.username
            }
           
            this.Nombre = this.alumno.nombre + ' ' + this.alumno.apellido;
          }
        }
      },
      (e) => {
        console.log('Error no se pudo procesar');
      }
    )
  }


  escanearQR(){
    this.barcodeScanner.scan().then
    (barcodeData => {
      this.codigoScaneado = barcodeData.text;
      // Si se escanea un código que registre la asistencia del alumno de la sesión
      if(this.codigoScaneado != null){
        // Asignamos la asistencia como true
        this.asistencia = {
          presente : true
        }
        this.registrarAsistencia(this.asistencia);
      }
    }
    )
  }

  registrarAsistencia(asistencia){
    this.apiService.modificarAlumno(this.alumno.alumnoID, asistencia).subscribe(
      (data) => {
        console.log('Asistencia registrada con éxito!');
      },
      (e) => {
        console.log('No se pudo modificar la asistencia');
      }
    )
  }


}
