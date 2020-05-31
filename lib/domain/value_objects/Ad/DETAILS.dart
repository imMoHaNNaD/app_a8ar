import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class DETAILS extends Equatable {
  final String value;

  DETAILS._(this.value);

  static Either<String, DETAILS> create(String value) {
    if (value.isEmpty || value == null)
      return Left('author cannot be empty or null');
    else
      return Right(DETAILS._(value));
  }

  @override
  List<Object> get props => [value];
}
