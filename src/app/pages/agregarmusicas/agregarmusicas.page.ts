import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { AgregarmusicaService } from '../../services/agregarmusica.service';

@Component({
  selector: 'app-agregarmusicas',
  templateUrl: './agregarmusicas.page.html',
  styleUrls: ['./agregarmusicas.page.scss'],
})
export class AgregarmusicasPage implements OnInit {
  agregarmusicaForm: FormGroup;

  constructor(
    private formsBuilder: FormBuilder,
    private agregarmusicaService: AgregarmusicaService
  ) {
    this.agregarmusicaForm = this.formsBuilder.group({
      can_nombre: [''],
      can_comentario: [''],
      can_lyrics: ['']
    });
  }

  ngOnInit() {
    console.log(this.agregarmusicaForm);
  }

}