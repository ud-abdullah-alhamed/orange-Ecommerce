import 'package:equatable/equatable.dart';

class RatingEntity extends Equatable {
  final double rate;
  final int count;

  const RatingEntity({
    required this.rate,
    required this.count,
  });

  @override
  List get props => [rate, count];
}
