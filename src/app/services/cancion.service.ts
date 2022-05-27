import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Cancion } from '../interfaces/cancion';

@Injectable({
  providedIn: 'root',
})
export class CancionService {
  api = 'http://localhost:3000/cancion';
  lyricsAPI = 'https://api.lyrics.ovh/v1/'
  constructor(public http: HttpClient) {}

  listarCanciones() {
    return this.http.get(this.api + 'es');
  }

  crearCanciones(cancion: any) {
    return this.http.post(this.api + '/create', cancion);
  }

  buscarCanciones(texto: String) {
    return this.http.get(this.api + `es-filter?q=${texto}`);
  }

  obtenerCanciones(id: number){
    const path = `${this.api}/find/${id}`;
    return this.http.get(path);
  }


  actualizarCancion(can_id, cancion: Cancion) {
    return this.http.put(
      'http://localhost:3000/cancion/update/' + can_id,
      cancion
    );
  }

  eliminarCancion(id: Observable<Cancion[]>) {
    return this.http.delete<Cancion[]>(
      'http://localhost:3000/cancion/remove/' + id
    );
  }

  getLyrics(artista, cancion){
    return this.http.get(`${this.lyricsAPI}${artista}${cancion}`);
  }


}
