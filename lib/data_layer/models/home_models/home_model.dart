class HomeModel {
  late final bool success;
  late final String message;
  late final Data data;
  HomeModel.fromJson(Map<String, dynamic> json){
    success = json['success'];
    message = json['message'];
    data = Data.fromJson(json['data']);
  }
}

class Data {
  late final String mainImage;
  late final List<Slider> slider;
  late final List<Category> category;
  Data.fromJson(Map<String, dynamic> json){
    mainImage = json['main_image'];
    slider = List.from(json['slider']).map((e)=>Slider.fromJson(e)).toList();
    category = List.from(json['category']).map((e)=>Category.fromJson(e)).toList();
  }
}

class Slider {
  late final int id;
  late final String image;
  Slider.fromJson(Map<String, dynamic> json){
    id = json['id'];
    image = json['image'];
  }
}

class Category {
  late final int id;
  late final String name;
  Category.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
  }
}