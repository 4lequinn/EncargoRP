import { Injectable } from '@angular/core';

/// Librerías
import { HttpClient, HttpHeaders, HttpErrorResponse } from '@angular/common/http';

//
import { Observable } from 'rxjs';
import { retry, catchError } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class ApiServiceService {

  // Cabecera HTTP Options
  httpOptions = {
    headers: new HttpHeaders({
      'Content-Type': 'application/json', //va en formato JSON
      'Access-Control-Allow-Origin': '**'
    })
  }

  constructor(private http: HttpClient) { }

  // Definimos las direcciones a utilizar de la API
  direccionHost = "http://localhost:1337/";
  direccionAlumnos = this.direccionHost + "alumnos/";
  direccionUsuarios = this.direccionHost + "usuarios/";
  direccionDocentes = this.direccionHost + "docentes/"

  // Métodos para acceder a la API

  //////////////////////////////////////////////////////////
  // ALUMNOS
  /////////////////////////////////////////////////////////

  // Listar alumnos
  listarAlumnos(): Observable<any> {
    return this.http.get(this.direccionAlumnos).pipe(retry(3));
  }

  // Buscar alumno
  buscarAlumno(id): Observable<any> {
    return this.http.get(this.direccionAlumnos + id).pipe(retry(3));
  }

  // Modificar alumno
  modificarAlumno(id, alumno): Observable<any> {
    return this.http.put(this.direccionAlumnos + id, alumno, this.httpOptions).pipe(retry(2));
  }

  // Método que agrega alumnos
  agregarAlumno(alumno) : Observable<any>{
    return this.http.post(this.direccionAlumnos, alumno, this.httpOptions).pipe(retry(3));
  }
  //////////////////////////////////////////////////////////
  // DOCENTES
  /////////////////////////////////////////////////////////

  // Listar docentes
  listarDocentes(): Observable<any> {
    return this.http.get(this.direccionDocentes).pipe(retry(3));
  }

  // Buscar alumno
  buscarDocente(id): Observable<any> {
    return this.http.get(this.direccionDocentes + id).pipe(retry(3));
  }


  //////////////////////////////////////////////////////////
  // USUARIOS
  /////////////////////////////////////////////////////////

  // Listar usuarios
  listarUsuarios(): Observable<any> {
    return this.http.get(this.direccionUsuarios).pipe(retry(3));
  }

  // Método que agrega usuarios
  agregarUsuario(usuario) : Observable<any>{
    return this.http.post(this.direccionUsuarios, usuario, this.httpOptions).pipe(retry(3));
  }

}
