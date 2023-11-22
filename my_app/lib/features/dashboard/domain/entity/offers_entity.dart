import 'package:equatable/equatable.dart';

class OffersEntity extends Equatable {
  final String title;
  final String brandcount;
  final String imgUrl;

  const OffersEntity(
      {required this.imgUrl, required this.title, required this.brandcount});

  @override
  List<Object?> get props {
    return [title, brandcount, imgUrl];
  }
}
