import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class WIDTH extends Equatable {
  final int value;

  WIDTH._(this.value);

  static Either<String, WIDTH> create(int value) {
    if (value ==0 || value == null)
      return Left('author cannot be empty or null');
    else
      return Right(WIDTH._(value));
  }

  @override
  List<Object> get props => [value];
}
