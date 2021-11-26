import { Component } from '@angular/core';
import { ApiServiceService } from 'src/app/services/api-service.service';
import { UsuarioI } from 'src/app/components/model/Usuario';
import { Router } from '@angular/router';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})
export class HomePage {

  paginatitulo = "Inicio de Sesion";

  // Definimos los atributos del login
  nombreUsuario:string;
  contrasenia:string;

  //Definimos el modelo
  usuario:UsuarioI = {
    nombre: "",
    contrasenia: "",
    tipo : 0
  };


  // Definimos un arreglo de usuarios
  usuarios:UsuarioI[] = [];
  
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
            nombre : data[i].nombre_usuario,
            contrasenia : data[i].contrasenia,
            tipo : data[i].tipo_usuario.id
          }

          this.usuarios.push(this.usuario);
        }
        var valida = 0; 
        // Recorremos la lista de usuarios para validar el acceso
        this.usuarios.forEach(item =>{
          if(item.nombre == this.nombreUsuario && item.contrasenia == this.contrasenia){
            valida = 1;
            if(item.tipo == 1){
              //Portal Docentes
              this.router.navigate(['/docente']);
            }else{
              //Portal Alumnos
              this.router.navigate(['/bienvenida',item.nombre]);
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
    this.usuario.nombre || this.usuario.contrasenia
  }
  

/* 
  async iniciarSesion(credenciales) {
    // Enviamos un diccionario
    this.usuario = {
      usuario: credenciales.username,
      contrasenia: credenciales.password,
      tipo: 0 // Valor por defecto no se usa aquí
    };

    const carga = await this.loadingController.create({
      message: "Cargando ..."
    });

    await carga.present();

    this.apiService.iniciarSesionPOST(this.usuario).subscribe(
      (data) => {
        console.log(data);
        console.log(data.mensaje)
        if (data.mensaje == "Error") {
          // CARGA DE INICIO DE SESIÓN
          carga.dismiss();
          // Mensaje de Usuario o Contraseña incorrectas
          this.mensajeOk('¡Error!', '¡Usuario o contraseña incorrectos!');
        } else {
          this.authService.login(credenciales.username, credenciales.password, data.tipoUsuario, data.rut, data.bienvenida)
          // CARGA DE INICIO DE SESIÓN
          carga.dismiss();
        }

      },
      (error) => {
        // CARGA DE INICIO DE SESIÓN
        carga.dismiss();
        // Alerta de que los servidores están caídos, vuelva más tarde
        console.log(error);
        this.mensajeOk('¡Lo sentimos!', 'EL servicio no se encuentra disponible en este momento, vuelva más tarde.');
      }
    );
  }

*/
}
