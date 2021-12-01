import { Component } from '@angular/core';
import { ApiServiceService } from 'src/app/services/api-service.service';
import { Router } from '@angular/router';
import { Usuario2I } from 'src/app/components/model/Usuario2';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})
export class HomePage {

  paginatitulo = "Inicio de Sesion";
  tipo: any = [];

  // Definimos los atributos del login
  nombreUsuario:string;
  contrasenia:string;

  //Definimos el modelo
  usuario:Usuario2I = {
    nombre_usuario: "",
    contrasenia: "",
    tipo_usuario : "",
    activo : false
  };


  // Definimos un arreglo de usuarios
  usuarios:Usuario2I[] = [];
  
  constructor
  (
    private apiService : ApiServiceService,
    private router : Router
  ) {}

  ngOnInit(): void {
  };

  iniciarSesion(){
    this.validarUsuario();
  }

  validarUsuario(){

    this.apiService.listarUsuarios().subscribe(
      (data) => {
        console.log(data);
        for (let i = 0; i < data.length; i++) {
          // Rellenamos la lista de usuarios
          this.usuario = {
            nombre_usuario : data[i].nombre_usuario,
            contrasenia : data[i].contrasenia,
            tipo_usuario : data[i].tipo_usuario.descripcion,
            activo : data[i].activo
          }
          this.usuarios.push(this.usuario);
        }
        var valida = 0; 
        
        // Recorremos la lista de usuarios para validar el acceso
        this.usuarios.forEach(item =>{
          console.log(this.usuario);
          this.tipo = item.tipo_usuario;
          if(item.nombre_usuario == this.nombreUsuario && item.contrasenia == this.contrasenia){
            valida = 1;
            if(this.tipo == 'DOCENTE'){
              //Portal Docentes
              this.router.navigate(['/docente',item.nombre_usuario]);
            }else{
              //Portal Alumnos
              this.router.navigate(['/bienvenida',item.nombre_usuario]);
            }
          }
        });

        if(valida == 0){
          console.log("Usuario o contraseña incorrecto.");
        }
      

      },
      (e) => {
        console.log("Error");
      }
    );
    this.usuario.nombre_usuario || this.usuario.contrasenia
  }
  

}
