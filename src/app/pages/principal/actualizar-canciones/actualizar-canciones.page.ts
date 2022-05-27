import { Component, OnInit } from '@angular/core';
import { UsuarioService } from 'src/app/services/usuario.service';
import { FormGroup, FormBuilder } from '@angular/forms';
import { Router, ActivatedRoute } from '@angular/router';
import { CancionService } from '../../../services/cancion.service';

@Component({
  selector: 'app-actualizar',
  templateUrl: './actualizar-canciones.page.html',
  styleUrls: ['./actualizar-canciones.page.scss'],
})
export class ActualizarCancionesPage implements OnInit {


  canciones: any;
  id: any;
  actualizarCancionForm: FormGroup;

  can_nombre: any;
  can_comentario: any;
  can_artista: any;

  constructor(
    public cancionService: CancionService,
    public formBuilder: FormBuilder,
    public router: Router,
    public activatedRoute: ActivatedRoute
    ) {
      this.id = this.activatedRoute.snapshot.paramMap.get('id');
    }

     ngOnInit() {
       console.log('Este es el iddddd',this.id);
       this.actualizarCancionForm = this.formBuilder.group({
        can_nombre: [''],
        can_comentario: [''],
        can_artista: ['']
       });
      this.getDato(this.id);
      console.log('THE IDDDDDDDDDD',this.id);
     }


  getDato(can_id){
    this.cancionService.obtenerCanciones(this.id)
    .subscribe(res => {
      console.log('DATAAAA',res);
      this.can_nombre = res['cancion'].can_nombre;
      this.can_comentario = res['cancion'].can_comentario;
      this.can_artista= res['cancion'].can_artista;
    }
    );
  }

onSubmit(){
    console.log(this.actualizarCancionForm.value);
  }
  actualizarForm() {
    console.log('codigo id metodo update', this.id);
      this.cancionService.actualizarCancion(this.id, this.actualizarCancionForm.value)
        .subscribe((res) => {
          console.log(res);
          this.actualizarCancionForm.reset();
          this.router.navigate(['/tabs/principal']);
        });

  }

}
