import 'package:api/model.dart';
import 'package:bloc/bloc.dart';

import 'data_services.dart';


class PostsCubits extends Cubit<List<Post>>{
  final _dataServices = DataServicesDio();
  PostsCubits() : super([]);

  void get Psosts async {
    print("inside chjh");
    emit(await _dataServices.getPost());
  }
}