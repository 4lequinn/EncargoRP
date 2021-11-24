import { Component, Input, OnInit } from '@angular/core';

@Component({
  selector: 'app-enicon',
  templateUrl: './enicon.component.html',
  styleUrls: ['./enicon.component.scss'],
})
export class EniconComponent implements OnInit {

  @Input()  pageTitle;
  constructor() { }

  ngOnInit() {}

}
