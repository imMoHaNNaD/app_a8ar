import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class TITLE extends Equatable {
  final String value;

  TITLE._(this.value);

  static Either<String, TITLE> create(String value) {
    if (value.isEmpty || value == null)
      return Left('author cannot be empty or null');
    else
      return Right(TITLE._(value));
  }

  @override
  List<Object> get props => [value];
}
