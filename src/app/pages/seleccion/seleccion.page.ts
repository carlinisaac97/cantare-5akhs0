import { Component, OnInit } from '@angular/core';
import { CancionService } from 'src/app/services/cancion.service';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-seleccion',
  templateUrl: './seleccion.page.html',
  styleUrls: ['./seleccion.page.scss'],
})
export class SeleccionPage implements OnInit {
  musics;
  can_id: number;
  id;
  can_nombre;
  can_artista;
  can_lyrics;
  songResult;
  constructor(private cancionService: CancionService,
    public activatedRoute: ActivatedRoute
    ) { 
    this.id = this.activatedRoute.snapshot.paramMap.get('id');
  }

  ngOnInit() {
    this.getSong();
  }

  getSong() {
    this.cancionService.obtenerCanciones(this.id).subscribe((data) => {
      this.songResult = data['cancion'];
      this.can_nombre = this.songResult.can_nombre;
      this.can_artista = this.songResult.can_artista;
      this.can_lyrics = this.songResult.can_lyrics;
    });
  }
}
