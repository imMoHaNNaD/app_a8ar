import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class NAME extends Equatable {
  final String value;

  NAME._(this.value);

  static Either<String, NAME> create(String value) {
    if (value.isEmpty || value == null)
      return Left('author cannot be empty or null');
    else
      return Right(NAME._(value));
  }

  @override
  List<Object> get props => [value];
}
