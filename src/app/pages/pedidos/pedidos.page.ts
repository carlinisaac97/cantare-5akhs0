import { Component, OnInit } from '@angular/core';
import { CancionService } from 'src/app/services/cancion.service';

@Component({
  selector: 'app-pedidos',
  templateUrl: './pedidos.page.html',
  styleUrls: ['./pedidos.page.scss'],
})
export class PedidosPage implements OnInit {
  musics;
  can_id: any;;
  
  constructor(
    public cancionService: CancionService
  ) { }

  ngOnInit() {
    this.listarCancionesSolicitadas();
  }
  
  ionViewWillEnter() {
    this.listarCancionesSolicitadas();
  }

  listarCancionesSolicitadas() {
    this.cancionService.listarCancionesSolicitadas().subscribe((data) => {
      console.log('Las solicitadasssssssss', data);
      this.musics = data['cancion'];
    });
  }
  

  eliminarCancion(cancion, i, slidingItem){
    console.log('este es el id', cancion.can_id);
    console.log('eliminar, eliminar');
    //console.log('cambios de estado: ',this.musics.can_solicitada);
    this.cancionService.ActualizarCancionSolicitada(cancion.can_id).subscribe(res =>{
      console.log('Ress Pedidos', res)
      console.log("lacancion",cancion);
        this.musics.splice(i, 1);
        slidingItem.close();
        this.ionViewWillEnter();
        console.log('Cancion eliminada!');
    })
    //  if (window.confirm('Seguro que quieres eliminar?')) {
    //   this.cancionService.actualizarCancion(this.can_id).subscribe((res) => {
    //     console.log("lacancion",cancion);
    //     this.musics.splice(i, 1);
    //     slidingItem.close();
    //     this.ionViewWillEnter();
    //     console.log('Cancion eliminada!');
    //   });
    }
 // }

}
