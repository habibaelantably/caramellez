
class ProductsModel {
  late final bool success;
  late final String message;
  late final Data data;

  ProductsModel.fromJson(Map<String, dynamic> json){
    success = json['success'];
    message = json['message'];
    data = Data.fromJson(json['data']);
  }
}

class Data {
  late final int id;
  late final String name;
  late final List<Product> product;

  Data.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    product = List.from(json['product']).map((e)=>Product.fromJson(e)).toList();
  }
}

class Product {
  late final int id;
  late final String name;
  late final String image;
  late final num price;

  Product.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    image = json['image'];
    price = json['price'];
  }
}