import 'package:equatable/equatable.dart';
import 'package:my_app/features/dashboard/domain/entity/rating_entity.dart';

class Productentity extends Equatable {
  final int id;
  final String title;
  final double price;
  final String description;
  final String imgurl;
  final RatingEntity rating;

  const Productentity(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.imgurl,
      required this.rating});

  @override
  List get props => [
        id,
        title,
        description,
        imgurl,
      ];
}
