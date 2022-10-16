import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Cancion } from '../interfaces/cancion';
import { environment } from '../../environments/environment';

@Injectable({
  providedIn: 'root',
})
export class CancionService {
  api = environment.urlBase + '/cancion';
  lyricsAPI = 'https://api.lyrics.ovh/v1/'
  constructor(public http: HttpClient) {}

  listarCanciones() {
    return this.http.get(`${this.api}`);
  }

  crearCanciones(cancion: any) {
    return this.http.post(`${this.api}/create`, cancion);
  }

  buscarCanciones(texto: String) {
    return this.http.get(`${this.api}-filter?q=${texto}`);
  }

  obtenerCanciones(id: number){
    // const path = `${this.api}/find/${id}`;
    // return this.http.get(path);
    return this.http.get(`${this.api}/find/${id}`);
  }

  actualizarCancion(can_id, cancion: Cancion) {
    return this.http.put(`${this.api}/update/${can_id}`, cancion
    );
    // return this.http.put('http://localhost:3000/cancion/update/' + can_id,
    //   cancion
    // );
  }

  eliminarCancion(id: Observable<Cancion[]>) {
    // return this.http.delete<Cancion[]>(
    //   'http://localhost:3000/cancion/remove/' + id
    // );
    return this.http.delete<Cancion[]>(`${this.api}/remove/${id}`);
  }

  getLyrics(artista, cancion){
    return this.http.get(`${this.lyricsAPI}${artista}/${cancion}`);
  }

  listarCancionesSolicitadas() {
    return this.http.get(`${this.api}/solicitadas`);
  }

  ActualizarCancionSolicitada(id) {
    return this.http.get(`${this.api}/actualizar-cancion-solicitadas/${id}`);
  }


}
