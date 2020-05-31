import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class SPACE extends Equatable {
  final String value;

  SPACE._(this.value);

  static Either<String, SPACE> create(String value) {
    if (value.isEmpty || value == null)
      return Left('author cannot be empty or null');
    else
      return Right(SPACE._(value));
  }

  @override
  List<Object> get props => [value];
}
