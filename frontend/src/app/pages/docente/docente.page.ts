import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { ApiServiceService } from 'src/app/services/api-service.service';

@Component({
  selector: 'app-docente',
  templateUrl: './docente.page.html',
  styleUrls: ['./docente.page.scss'],
})
export class DocentePage implements OnInit {

  Titulo = "Sesion Profesor";
  Carrera = "Ingenieria Informatica";
  Rol = "Profesor";
  Nombre = "";

  username : any;

  constructor
    (
      private apiService: ApiServiceService,
      private activatedRoute: ActivatedRoute
    ) { }

  ngOnInit() {
    // Capturamos el username por parametro
    this.username = this.activatedRoute.snapshot.paramMap.get("username");
    // Buscarmos el nombre del profesor
    this.buscarDocente();
  }

  buscarDocente(){
    this.apiService.listarDocentes().subscribe(
      (data) => {
        console.log(data);
        // Buscamos el docente por nombre de usuario
        for(let i = 0; i < data.length ; i++){
          if(data[i].usuario.nombre_usuario == this.username){
            // Si encuentra el usuario que me rescate el nombre del docente
            this.Nombre = data[i].nombre + ' ' + data[i].apellido;
          }
        }
      },
      (e) => {
        console.log(e);
      }
    )
  }

}
