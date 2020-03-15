import '../sistema/atributo.dart';

class Habilidade extends Atributo {
  int _modificador;

  int getModificador() => _modificador;

  Habilidade(String NomeLongo, String NomeCurto, int valor)
      : super(NomeLongo, NomeCurto, valor) {
    this._modificador = _calculaModificador(valor);
  }

  int _calculaModificador(int vlrHabilidade) {
    int habilidade;
    int mod = -5;

    for (habilidade = 1; habilidade <= vlrHabilidade; habilidade++) {
      for (int i = 1; i <= habilidade; i++) {
        if (habilidade % 2 == 0) {
          mod = mod + 1;
          break;
        }
      }
    }
    return (mod);
  }

  @override
  String toString() {
    return super.toString() + ' MOD: $this._modificador';
  }

  void setValor(int valor) {
    super.setValorTotal(valor);
    this._modificador = this._calculaModificador(valor);
  }

  @override
  void incrementa([int valor]) {
    if (valor = null) {
      valor = 1;
    }
    this.setValorTotal(this.getValorTotal() + valor);
    this.setValorAtual(this.getValorAtual() + valor);
    this._modificador = this._calculaModificador(this.getValorTotal());
  }

  @override
  void decrementa([int valor]) {
    if (valor = null) {
      valor = 1;
    }
    this.setValorTotal(this.getValorTotal() - valor);
    this.setValorAtual(this.getValorAtual() - valor);
    this._modificador = this._calculaModificador(this.getValorTotal());
  }
}
