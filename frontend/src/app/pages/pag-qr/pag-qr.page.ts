import { Component, OnInit } from '@angular/core';
import { BarcodeScanner } from '@ionic-native/barcode-scanner/ngx';

@Component({
  selector: 'app-pag-qr',
  templateUrl: './pag-qr.page.html',
  styleUrls: ['./pag-qr.page.scss'],
})
export class PagQRPage implements OnInit {

  Titulo = "Escaneo QR";
  Rol = "Alumno";
  Carrera = "Ingenieria Informática";
  Nombre = "Luis Fernandez";

  // Código QR
  qrData = null;
  codigoCreado = null;
  
  elementType: 'url' | 'img' | 'canvas' = 'canvas'

  constructor
  (
    private barcodeScanner: BarcodeScanner,
  )
  { }

  ngOnInit() {
  }

  crearCodigo() {
    // Guardamos la dirección del Código QR
    this.codigoCreado = this.qrData;
  }
  
}
