import { Component, OnInit, ViewChild } from '@angular/core';
import { CancionService } from 'src/app/services/cancion.service';

@Component({
  selector: 'app-principal',
  templateUrl: 'principal.page.html',
  styleUrls: ['principal.page.scss'],
})
export class PrincipalPage implements OnInit {
  musics;
  can_id: number;

  constructor(private cancionService: CancionService) {}

  ngOnInit() {
    this.listarCanciones();
    // this.listarCancionesSolicitadas();
  }

  ionViewWillEnter() {
    this.listarCanciones();
  }

  listarCanciones() {
    this.cancionService.listarCanciones().subscribe((data) => {
      console.log(data);
      this.musics = data['cancion'];
    });
  }

  buscar(event) {
    const valor = event.detail.value;
    this.cancionService.buscarCanciones(valor).subscribe((data) => {
      console.log(data);
      if (data) {
        this.musics = data['cancion'];
      } else {
        this.musics = [];
      }
    });
  }

  eliminarCancion(cancion, i, slidingItem) {
    console.log('eliminar, eliminar');
    if (window.confirm('Seguro que quieres eliminar?')) {
      this.cancionService.eliminarCancion(cancion.can_id).subscribe(() => {
        this.musics.splice(i, 1);
        slidingItem.close();
        this.ionViewWillEnter();
        console.log('Cancion eliminada!');
      });
    }
  }

  // listarCancionesSolicitadas() {
  //   this.cancionService.listarCancionesSolicitadas().subscribe((data) => {
  //     console.log('Las solicitadasssssssss', data);
  //     this.musics = data['cancion'];
  //   });
  // }
}
