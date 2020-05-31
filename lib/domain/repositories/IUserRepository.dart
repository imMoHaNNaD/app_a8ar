import 'package:flutter/foundation.dart';
import 'package:a8ar_beta/domain/entities/User.dart';

abstract class IBookRepository {
  add(User book);
  update(User book);
  delete({@required String userid});
  Future<User> find({@required String userid});
  Future<List<User>> findAll();
}
