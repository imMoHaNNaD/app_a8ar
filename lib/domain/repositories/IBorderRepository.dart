import 'package:flutter/foundation.dart';
import 'package:a8ar_beta/domain/entities/Border.dart';

abstract class IBorderRepository {
  add(Border border);
  update(Border border);
  delete({@required String borderid});
  Future<Border> find({@required String borderid});
  Future<List<Border>> findAll();
}
