import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class EMAIL extends Equatable {
  final String value;

  EMAIL._(this.value);

  static Either<String, EMAIL> create(String value) {
    if (value.isEmpty || value == null)
      return Left('author cannot be empty or null');
    else
      return Right(EMAIL._(value));
  }

  @override
  List<Object> get props => [value];
}
