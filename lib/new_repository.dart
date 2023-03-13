import 'package:shopiee/index.dart';

class NewRepository {
  final NewProvider _newProvider = NewProvider();

  NewRepository();

  void test(bool isError) {
    _newProvider.test(isError);
  }
}