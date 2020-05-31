import 'package:flutter/foundation.dart';
import 'package:a8ar_beta/domain/entities/Ad.dart';

abstract class IADRepository {
  add(Ad book);
  update(Ad book);
  delete({@required String adid});
  Future<Ad> find({@required String adid});
  Future<List<Ad
  >> findAll();
}
