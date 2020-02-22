class ProductModel {
  ProductModel(
      {this.cdProduct, this.description, this.embalagem, this.qtdStock});

  int cdProduct;
  String description;
  String embalagem;
  double qtdStock;

  static ProductModel fromJson(Map<String, dynamic> json) {
    return ProductModel()
      ..cdProduct = json['cdProduct']
      ..description = json['description']
      ..embalagem = json['embalagem']
      ..qtdStock = json['qtdStock'];
  }

  Map<String, dynamic> toJson() {
    return {
      'cdProduct': cdProduct,
      'description': description,
      'embalagem': embalagem,
      'qtdStock': qtdStock,
    };
  }

  @override
  String toString() {
    return 'ProductModel{cdProduct: $cdProduct, description: $description, embalagem: $embalagem, qtdStock: $qtdStock}';
  }
}
