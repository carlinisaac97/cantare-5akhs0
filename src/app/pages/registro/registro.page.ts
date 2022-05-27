import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { UsuarioService } from '../../services/usuario.service';

@Component({
  selector: 'app-registro',
  templateUrl: './registro.page.html',
  styleUrls: ['./registro.page.scss'],
})
export class RegistroPage implements OnInit {
  registroForm: FormGroup;

  constructor(
    private formsBuilder: FormBuilder,
    private usuarioService: UsuarioService
  ) {
    this.registroForm = this.formsBuilder.group({
      usu_nombre: [''],
      usu_documento: [''],
      usu_telefono: [''],
      usu_email: [''],
      usu_pass: [''],
    });
  }

  ngOnInit() {
    console.log(this.registroForm);
  }

  registrarUsuario() {
    console.log(this.registroForm);

    this.usuarioService
      .crearUsuario(this.registroForm.value)
      .subscribe((res) => {
        console.log(res);
      });
  }
}
