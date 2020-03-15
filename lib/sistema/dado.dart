import 'dart:math';

class Dado {
  int lados;
  Random rolador;

  Dado(int lados) {
    this.lados = lados;
    this.rolador =  Random();
  }

  int rolar() {
    return rolador.nextInt(this.lados) + 1;
  }
}
