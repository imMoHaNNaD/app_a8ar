import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class PASSWORD extends Equatable {
  final String value;

  PASSWORD._(this.value);

  static Either<String, PASSWORD> create(String value) {
    if (value.isEmpty || value == null)
      return Left('author cannot be empty or null');
    else
      return Right(PASSWORD._(value));
  }

  @override
  List<Object> get props => [value];
}
