import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { Router } from '@angular/router';
import { ToastController } from '@ionic/angular';
import { CancionService } from 'src/app/services/cancion.service';
import { LoaderService } from '../../../services/loader.service';

@Component({
  selector: 'app-crear',
  templateUrl: './crear-canciones.page.html',
  styleUrls: ['./crear-canciones.page.scss'],
})
export class CrearCancionesPage implements OnInit {
  cancionForm: FormGroup;
  can_artista;
  can_nombre;
  can_lyrics;

  constructor(
    private formsBuilder: FormBuilder,
    private cancionService: CancionService,
    public router: Router,
    public toastController: ToastController,
    public loaderService: LoaderService
  ) {
    this.cancionForm = this.formsBuilder.group({
      can_nombre: [''],
      can_comentario: [''],
      can_artista: [''],
      can_lyrics: [''],
    });
  }

  ngOnInit() {
    console.log(this.cancionForm);
    // this.getLyricsByName('Bad Bunny','Callaita');
  }

  async presentToast(mensaje) {
    const toast = await this.toastController.create({
      message: mensaje,
      duration: 3000,
    });
    toast.present();
  }

  async crearCancion() {
    console.log(this.cancionForm);
    //show the loader
    this.loaderService.showLoader();

    await this.cancionService
      .getLyrics(
        this.cancionForm.value.can_artista,
        this.cancionForm.value.can_nombre
      )
      .toPromise()
      .then((res) => {
        console.log('RESULT OF GET LYRICS', res['lyrics'], res);
        this.cancionForm.controls['can_lyrics'].setValue(res['lyrics']);
        this.loaderService.hideLoader();
        this.cancionService
          .crearCanciones(this.cancionForm.value)
          .subscribe((res) => {
            console.log(res);
          });
        this.router.navigate(['/tabs/principal/']);
        this.presentToast('La cancion se ha guardado con exito!');
      })
      .catch((error) => {
        console.log('No se ha encontrado la cancion');
        this.presentToast('No se ha encontrado la cancion! Intentalo de nuevo');
        this.loaderService.hideLoader();
      });
    console.log('LYRICS OUT OF PROMISEEEE ', this.cancionForm.value.can_lyrics);
  }

  getLyricsByName(artista, cancion) {
    this.cancionService.getLyrics(artista, cancion).subscribe((res) => {
      console.log('LYRICS RESULTTT', res);
    });
  }
}
