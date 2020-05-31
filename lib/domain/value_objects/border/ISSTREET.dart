import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class ISSTREET extends Equatable {
  final bool value;

  ISSTREET._(this.value);

  static Either<String, ISSTREET> create(bool value) {
    if (value == null)
      return Left('author cannot be empty or null');
    else
      return Right(ISSTREET._(value));
  }

  @override
  List<Object> get props => [value];
}
