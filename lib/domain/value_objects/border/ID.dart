import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class ID extends Equatable {
  final String value;

  ID._(this.value);

  static Either<String, ID> create(String value) {
    if (value.isEmpty || value == null)
      return Left('author cannot be empty or null');
    else
      return Right(ID._(value));
  }

  @override
  List<Object> get props => [value];
}
