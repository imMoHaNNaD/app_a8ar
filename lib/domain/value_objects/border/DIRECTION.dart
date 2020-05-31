import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class DIRECTION extends Equatable {
  final String value;

  DIRECTION._(this.value);

  static Either<String, DIRECTION> create(String value) {
    if (value.isEmpty || value == null)
      return Left('author cannot be empty or null');
    else
      return Right(DIRECTION._(value));
  }

  @override
  List<Object> get props => [value];
}
