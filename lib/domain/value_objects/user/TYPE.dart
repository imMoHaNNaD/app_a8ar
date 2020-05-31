import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class TYPE extends Equatable {
  final String value;

  TYPE._(this.value);

  static Either<String, TYPE> create(String value) {
    if (value.isEmpty || value == null)
      return Left('author cannot be empty or null');
    else
      return Right(TYPE._(value));
  }

  @override
  List<Object> get props => [value];
}
