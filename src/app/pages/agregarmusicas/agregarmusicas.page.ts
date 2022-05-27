import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { DomSanitizer } from '@angular/platform-browser';
import { AgregarmusicaService } from '../../services/agregarmusica.service';

@Component({
  selector: 'app-agregarmusicas',
  templateUrl: './agregarmusicas.page.html',
  styleUrls: ['./agregarmusicas.page.scss'],
})
export class AgregarmusicasPage implements OnInit {
  public archivos: any = [];
  public previsualizacion: string;

  agregarmusicaForm: FormGroup;

  constructor(
    private formsBuilder: FormBuilder,
    private agregarmusicaService: AgregarmusicaService,
    private sanitizer: DomSanitizer
  ) {
    this.agregarmusicaForm = this.formsBuilder.group({
      can_nombre: [''],
      can_comentario: [''],
      can_lyrics: [''],
    });
  }

  ngOnInit() {
    console.log(this.agregarmusicaForm);
  }

  capturarFile(event): any {
    const archivoCapturado = event.target.files[0];
    this.extraerBase64(archivoCapturado).then((imagen: any) => {
      this.previsualizacion = imagen.base;
      console.log(imagen);
    });
    this.archivos.push(archivoCapturado);
    // console.log(event.target.files);
  }

  extraerBase64 = async ($event: any) =>
    new Promise((resolve, reject) => {
      try {
        const unsafeImg = window.URL.createObjectURL($event);
        const image = this.sanitizer.bypassSecurityTrustUrl(unsafeImg);
        const reader = new FileReader();
        reader.readAsDataURL($event);
        reader.onload = () => {
          resolve({
            // blob: $event,
            // image,
            base: reader.result,
          });
        };
        reader.onerror = (error) => {
          resolve({
            // blob: $event,
            // image,
            base: null,
          });
        };
      } catch (error) {
        return null;
      }
    });

  subirArchivo(): any {
    try {
      const formularioDeDatos = new FormData();
      this.archivos.forEach((archivo) => {
        console.log(archivo);
        formularioDeDatos.append('files', archivo)
      });

      // this.rest.post(`http://localhost:3000/upload`, formularioDeDatos)
      // .subscribe(res => {
      //   console.log('Respuesta de servidor', res);
      // })
    } catch (error) {
      console.log('Error', error);
    }
  }
}
