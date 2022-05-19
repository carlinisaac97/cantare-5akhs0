import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { Router } from '@angular/router';
import { CancionService } from 'src/app/services/cancion.service';

@Component({
  selector: 'app-crear',
  templateUrl: './crear.page.html',
  styleUrls: ['./crear.page.scss'],
})
export class CrearPage implements OnInit {
  cancionForm: FormGroup;

  constructor(
    private formsBuilder: FormBuilder,
    private cancionService: CancionService,
    public router: Router
  ) {
    this.cancionForm = this.formsBuilder.group({
      can_nombre: [''],
      can_comentario: [''],
      can_lyrics: [''],
    });
  }

  ngOnInit() {
    console.log(this.cancionForm);
  }

  crearCancion() {
    console.log(this.cancionForm);

    this.cancionService
      .crearCanciones(this.cancionForm.value)
      .subscribe((res) => {
        console.log(res);
      });
      this.router.navigate(['/tabs/principal/']);
  }

}
