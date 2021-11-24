import { Component, Input, OnInit } from '@angular/core';

@Component({
  selector: 'app-pie-pag',
  templateUrl: './pie-pag.component.html',
  styleUrls: ['./pie-pag.component.scss'],
})
export class PiePagComponent implements OnInit {

  @Input() pieTitle;
  constructor() { }

  ngOnInit() {}

}
