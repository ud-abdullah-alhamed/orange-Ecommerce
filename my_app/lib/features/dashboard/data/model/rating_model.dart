import 'package:my_app/features/dashboard/domain/entity/rating_entity.dart';

class RatingModel extends RatingEntity {
  const RatingModel({required super.rate, required super.count});
  factory RatingModel.fromJson(Map<String, dynamic> json) {
    return RatingModel(
      rate: json['rate'].toDouble(),
      count: json['count'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'rate': rate,
      'count': count,
    };
  }
}
