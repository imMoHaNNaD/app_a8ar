import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class USERID extends Equatable {
  final String value;

  USERID._(this.value);

  static Either<String, USERID> create(String value) {
    if (value.isEmpty || value == null)
      return Left('author cannot be empty or null');
    else
      return Right(USERID._(value));
  }

  @override
  List<Object> get props => [value];
}
