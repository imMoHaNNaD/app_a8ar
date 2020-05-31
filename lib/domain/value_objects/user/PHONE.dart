import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class PHONE extends Equatable {
  final String value;

  PHONE._(this.value);

  static Either<String, PHONE> create(String value) {
    if (value.isEmpty || value == null)
      return Left('author cannot be empty or null');
    else
      return Right(PHONE._(value));
  }

  @override
  List<Object> get props => [value];
}
