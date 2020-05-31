import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class LONG extends Equatable {
  final String value;

  LONG._(this.value);

  static Either<String, LONG> create(String value) {
    if (value.isEmpty || value == null)
      return Left('author cannot be empty or null');
    else
      return Right(LONG._(value));
  }

  @override
  List<Object> get props => [value];
}
