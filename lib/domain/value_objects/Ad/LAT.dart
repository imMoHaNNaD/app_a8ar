import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class LAT extends Equatable {
  final String value;

  LAT._(this.value);

  static Either<String, LAT> create(String value) {
    if (value.isEmpty || value == null)
      return Left('author cannot be empty or null');
    else
      return Right(LAT._(value));
  }

  @override
  List<Object> get props => [value];
}
