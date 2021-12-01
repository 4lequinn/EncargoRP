import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';


@Injectable({
  providedIn: 'root'
})
export class AlumnosService {

  API = "https://registroasist.herokuapp.com/alumnos"

  constructor(private cliente: HttpClient) { }

  getAll() {
    return this.cliente.get(this.API);
  }
  

  createAlumnos(Nombre: string, Carrera: string, Presente: boolean, Numero_Lista: number, Foto_Alumno: Blob) {
    return this.cliente.post(this.API, {Nombre,Carrera,Presente,Numero_Lista,Foto_Alumno} )
  }

  deleteAlumnos(id: String) {
    return this.cliente.delete(`${this.API}/${id}`)
  }

  detalleAlumno(id: String){
    return this.cliente.get(`${this.API}/${id}`)
  }

  alterarAlumnos(Nombre: string, Carrera: string, Presente: boolean, Numero_Lista: number, Foto_Alumno: Blob) {
    return this.cliente.put(this.API, {Nombre,Carrera,Presente,Numero_Lista,Foto_Alumno} )
  }

}
                                                             