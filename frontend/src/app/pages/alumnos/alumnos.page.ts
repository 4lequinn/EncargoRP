import { Component, OnInit } from '@angular/core';
import { NavController } from '@ionic/angular';
import { NavigationExtras, Router } from '@angular/router';
import { AlumnosService } from 'src/app/services/alumnos.service';
import { AgregarAlumnosPage } from './agregar-alumnos/agregar-alumnos.page';

@Component({
  selector: 'app-alumnos',
  templateUrl: './alumnos.page.html',
  styleUrls: ['./alumnos.page.scss'],
})
export class AlumnosPage implements OnInit {

  alumnos: any = [];

  constructor(private alumnosService: AlumnosService, private router : Router) { }

  cargar(){
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


  ngOnInit() {
    this.cargar();
  }

  ionViewWillEnter(){
    this.cargar();
  }

}
