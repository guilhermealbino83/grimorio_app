abstract class Atributo {
  String _nomeLongo;
  String _nomeCurto;
  int _valorTotal;
  int _valotAtual;

  Atributo(String NomeLongo, String NomeCurto, [int valor]) {
    this._nomeCurto = NomeCurto;
    this._nomeLongo = NomeLongo;
    this._valorTotal = valor;
    this._valotAtual = valor;
  }

  @override
  String toString() {
    return '$_nomeLongo ($_nomeCurto) -> $_valorTotal ($_valotAtual)';
  }

  void setValorTotal(int valor) {
    this._valorTotal = valor;
  }

  int getValorTotal() {
    return this._valorTotal;
  }

  void setValorAtual(int valor) {
    this._valotAtual = valor;
  }

  int getValorAtual() {
    return this._valotAtual;
  }

  void incrementa(int valor);

  void decrementa(int valor);
}
