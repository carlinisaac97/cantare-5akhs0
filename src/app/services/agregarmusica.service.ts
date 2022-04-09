import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class AgregarmusicaService {
  api = 'http://localhost:3000/cancion';
  constructor(public http: HttpClient) {}

  listarCanciones() {
    return this.http.get(this.api + 'es');
  }

  crearCancion(user: any) {
    return this.http.post(this.api + '/create', user);
  }
}

