import { NgModule } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  {
    path: 'home',
    loadChildren: () => import('./pages/home/home.module').then( m => m.HomePageModule)
  },
  {
    path: '',
    redirectTo: 'home',
    pathMatch: 'full'
  },
  {
    path: 'bienvenida/:username',
    loadChildren: () => import('./pages/bienvenida/bienvenida.module').then( m => m.BienvenidaPageModule)
  },
  {
    path: 'recuperar-contrasena',
    loadChildren: () => import('./pages/recuperar-contrasena/recuperar-contrasena.module').then( m => m.RecuperarContrasenaPageModule)
  },
  {
    path: 'session/:username',
    loadChildren: () => import('./pages/session/session.module').then( m => m.SessionPageModule)
  },
  {
    path: 'pages',
    loadChildren: () => import('./pages/pages.module').then( m => m.PagesPageModule)
  },
  {
    path: 'pag-qr',
    loadChildren: () => import('./pages/pag-qr/pag-qr.module').then( m => m.PagQRPageModule)
  },
  {
    path: 'docente/:username',
    loadChildren: () => import('./pages/docente/docente.module').then( m => m.DocentePageModule)
  },
  {
    path: 'alumnos',
    children: [
      {
        path: '',
        loadChildren: () => import('./pages/alumnos/alumnos.module').then( m => m.AlumnosPageModule)
      },
      {
        path: ':id',
        loadChildren: () => import('./pages/alumnos/detalle-alumno/detalle-alumno.module').then( m => m.DetalleAlumnoPageModule)
      }
    ]
  },
  {
    path: 'agregar-alumnos',
    loadChildren: () => import('./pages/alumnos/agregar-alumnos/agregar-alumnos.module').then( m => m.AgregarAlumnosPageModule)
  },
  {
    path: 'modificar',
    loadChildren: () => import('./pages/alumnos/modificar/modificar.module').then( m => m.ModificarPageModule)
  }
];

@NgModule({
  imports: [
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules })
  ],
  exports: [RouterModule]
})
export class AppRoutingModule { }
