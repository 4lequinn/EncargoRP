import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { ApiServiceService } from 'src/app/services/api-service.service';

@Component({
  selector: 'app-bienvenida',
  templateUrl: './bienvenida.page.html',
  styleUrls: ['./bienvenida.page.scss'],
})
export class BienvenidaPage implements OnInit {

  Titulo = "Bienvenida";
  Rol = "Alumno";
  Nombre = "";

  username = "";

  constructor
  (
    private apiService :  ApiServiceService,
    private activatedRoute: ActivatedRoute,
    private router : Router
  )
  { }

  ngOnInit() {
    // Capturamos el username por parametro
    this.username = this.activatedRoute.snapshot.paramMap.get("username");
    
    // Buscar alumno por username
    this.buscarAlumno();

  }


  buscarAlumno(){
    this.apiService.listarAlumnos().subscribe(
      (data)=>{
        console.log(data);
        for(let i = 0; i < data.length ; i++){
          console.log(data[i].usuario.nombre_usuario);
          if(data[i].usuario.nombre_usuario == this.username){
            this.Nombre = data[i].nombre + ' ' + data[i].apellido; 
          }
        } 
      },
      (e) =>{
        console.log(e);
      }
    )
  }

  sesionAlumno(){
    this.router.navigate(['/session',this.username]);
  }

}
