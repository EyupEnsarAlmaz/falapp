class Burc {
  final String _burcAdi;
  final String _burcTarih;
  final String _burcDetay;
  final String _burckucukResim;
  final String _burcbuyukResim;

  get burcAdi => this._burcAdi;
  get burcTarih => this._burcTarih;
  get burcDetay => this._burcDetay;
  get burckucukResim => this._burckucukResim;
  get burcbuyukResim => this._burcbuyukResim;

  Burc(this._burcAdi, this._burcTarih, this._burcDetay, this._burckucukResim,
      this._burcbuyukResim);
  @override
  String toString() {
    return '$_burcAdi - $_burcbuyukResim';
  }
}
