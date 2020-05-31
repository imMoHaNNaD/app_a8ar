import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class LENTH extends Equatable {
  final int value;

  LENTH._(this.value);

  static Either<String, LENTH> create(int value) {
    if (value ==0 || value == null)
      return Left('author cannot be empty or null');
    else
      return Right(LENTH._(value));
  }

  @override
  List<Object> get props => [value];
}
