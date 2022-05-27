import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-perfil',
  templateUrl: './perfil.page.html',
  styleUrls: ['./perfil.page.scss'],
})
export class PerfilPage implements OnInit {

  constructor() { }

  ngOnInit() {
  }

  logout() {
  //   console.log(this.loginForm);

  //   this.usuarioService
  //     .login(this.loginForm.value)
  //     .subscribe((res) => {
  //       console.log(res);
  //     });
  //     // this.router.navigate(['/admin/usuarios']);
  }
}
