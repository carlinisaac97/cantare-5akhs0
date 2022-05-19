import { Component, OnInit } from '@angular/core';
import { CancionService } from 'src/app/services/cancion.service';

@Component({
  selector: 'app-listar',
  templateUrl: './listar.page.html',
  styleUrls: ['./listar.page.scss'],
})
export class ListarPage implements OnInit {
  constructor(private cancionService: CancionService) {}

  listaCanciones;

  ngOnInit() {
    this.listarCanciones();
  }

  listarCanciones() {
    this.cancionService.listarCanciones().subscribe((res) => {
      console.log(res);
      this.listaCanciones = res['cancion'];
    });
  }
}
