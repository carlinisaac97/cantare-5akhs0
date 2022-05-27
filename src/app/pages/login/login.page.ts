import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder } from '@angular/forms';
import { UsuarioService } from '../../services/usuario.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-login',
  templateUrl: './login.page.html',
  styleUrls: ['./login.page.scss'],
})
export class LoginPage implements OnInit {
  loginForm: FormGroup;

  constructor(
    private formsBuilder: FormBuilder,
    private usuarioService: UsuarioService,
    public router: Router
  ) {
    this.loginForm = this.formsBuilder.group({
      usu_email: [''],
      usu_pass: [''],
    });
  }

  ngOnInit() {
    console.log(this.loginForm);
  }

  login() {
    console.log(this.loginForm);

    this.usuarioService
      .login(this.loginForm.value)
      .subscribe((res) => {
        console.log(res);
      });
      // this.router.navigate(['/admin/usuarios']);
  }

  

}
