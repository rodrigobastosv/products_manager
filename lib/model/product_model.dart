class ProductModel {
  String codiProdu;
  String nomeProdu;
  String embaEntra;
  String quanEmbaEntra;
  String atuaProdu;

  ProductModel(
      {this.codiProdu,
      this.nomeProdu,
      this.embaEntra,
      this.quanEmbaEntra,
      this.atuaProdu});

  ProductModel.fromJson(Map<String, dynamic> json) {
    codiProdu = json['codi_produ'];
    nomeProdu = json['nome_produ'];
    embaEntra = json['emba_entra'];
    quanEmbaEntra = json['quan_emba_entra'];
    atuaProdu = json['atua_produ'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['codi_produ'] = this.codiProdu;
    data['nome_produ'] = this.nomeProdu;
    data['emba_entra'] = this.embaEntra;
    data['quan_emba_entra'] = this.quanEmbaEntra;
    data['atua_produ'] = this.atuaProdu;
    return data;
  }
}
