import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class LAT extends Equatable {
  final int value;

  LAT._(this.value);

  static Either<String, LAT> create(int value) {
    if (value ==0 || value == null)
      return Left('author cannot be empty or null');
    else
      return Right(LAT._(value));
  }

  @override
  List<Object> get props => [value];
}
