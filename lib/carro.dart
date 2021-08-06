class Carro {
  late double _kmRodados;
  late double _tanqueCombustivel;
  late double _kmPorLitro;
  late double _capacidadeTanque;

  Carro() {
    this._kmRodados = 0;
    this._tanqueCombustivel = 0;
    this._kmPorLitro = 15;
    this._capacidadeTanque = 60;
  }

  getKmRodados() {
    return _kmRodados;
  }

  getTanqueCombustivel() {
    return _tanqueCombustivel;
  }

  locomoverCarro(double value) {
    if (_tanqueCombustivel > 0 && _tanqueCombustivel - (value / _kmPorLitro) >= 0) {
       _kmRodados += value;
      _tanqueCombustivel -= (value / _kmPorLitro);
    }
  }

  abastecer(double value) {
    if ((_tanqueCombustivel + value) <= _capacidadeTanque) {
      return _tanqueCombustivel += value;
    }
  }
}

