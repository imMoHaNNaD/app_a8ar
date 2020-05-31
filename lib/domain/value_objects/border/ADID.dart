import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class ADID extends Equatable {
  final String value;

  ADID._(this.value);

  static Either<String, ADID> create(String value) {
    if (value.isEmpty || value == null)
      return Left('author cannot be empty or null');
    else
      return Right(ADID._(value));
  }

  @override
  List<Object> get props => [value];
}
