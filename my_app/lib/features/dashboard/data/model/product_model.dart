import 'package:my_app/features/dashboard/data/model/rating_model.dart';
import 'package:my_app/features/dashboard/domain/entity/product_entity.dart';

class ProductModel extends Productentity {
  const ProductModel(
      {required super.id,
      required super.title,
      required super.price,
      required super.description,
      required super.imgurl,
      required super.rating});

  tojson() {
    return {
      'id': id,
      'title': title,
      'price': price,
    };
  }

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      price: json['price'].toDouble(),
      imgurl: json['image'],
      description: json['description'],
      rating: RatingModel.fromJson(json['rating']),
    );
  }
}
