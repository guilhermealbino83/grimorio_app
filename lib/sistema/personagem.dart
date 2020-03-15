import 'habilidade.dart';
import 'resistencia.dart';

class Personagem {
  String _nome;
  String _jogador;
  int _nivel;
  List _habilidades = new List<Habilidade>(6);
  List _resistencias = new List<Resistencia>(3);

  Personagem(String nome,
      String jogador,
      int nivel,
      int forca,
      int destreza,
      int constituicao,
      int inteligencia,
      int sabedoria,
      int carisma) {

    this._nome = nome;
    this._jogador = jogador;

    this._habilidades.add(Habilidade('Forca', 'FOR', forca));
    this._habilidades.add(Habilidade('Desteza', 'DES', destreza));
    this._habilidades.add(Habilidade('Constituicao', 'CON', constituicao));
    this._habilidades.add(Habilidade('Sabedoria', 'SAB', inteligencia));
    this._habilidades.add(Habilidade('Inteligencia', 'INT', sabedoria));
    this._habilidades.add(Habilidade('Carisma', 'CAR', carisma));
    ;
    
    this._resistencias[0] = Resistencia('Fortitude', 'FORT', this._nivel, this._habilidades[0]);
    this._resistencias[1] = Resistencia('Reflexo', 'REF', this._nivel, this._habilidades[1]);
    this._resistencias[2] = Resistencia('Vontade', 'VON', this._nivel, this._habilidades[3]);
    
  }

  @override
  String toString() {
    String ret = 'teste';
   
    ret = this._nome + '(' + this._jogador + ')';
    ret = ret + 'Habilidades($this._habilidades.length)';

    //for (var i = 0; i < this._habilidades.length; i++) {
      //ret = ret + this._habilidades[i].toString();
    //}  

    //for (var i = 0; i < _resistencias.length; i++) {
//      ret = ret + _resistencias[i].toString();
  //  }

    return  ret;
  }
}
