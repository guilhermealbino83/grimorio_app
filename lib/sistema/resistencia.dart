import 'dart:io';

import 'atributo.dart';
import 'habilidade.dart';

class Resistencia extends Atributo {
  Resistencia(String NomeLongo, String NomeCurto, int metadeNivel,
      Habilidade habilidade)
      : super(NomeLongo, NomeCurto) {
    int val;
    if (metadeNivel == null){
      metadeNivel = 0;
    }
    if (habilidade.getModificador() == null){
      val = metadeNivel;
    }
    val =  metadeNivel + habilidade.getModificador();   
    this.setValorTotal(val);
  }
  @override
  void incrementa(int valor) {
    this.setValorTotal(valor);
  }
  @override
  void decrementa(int valor) {
    this.setValorTotal(valor);
  }

  @override
  String toString() {
    return super.toString();
  }
}
