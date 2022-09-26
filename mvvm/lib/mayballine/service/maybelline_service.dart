


import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mvvm/mayballine/model/maybelline_model.dart';


abstract class IMaybellineService {

  final Dio dio;
  IMaybellineService(this.dio);

  Future<List<MaybellineModel>?> getProducts();
}


class MaybellineService extends IMaybellineService {
  MaybellineService(super.dio);

  Future<List<MaybellineModel>?> getProducts () async {

      final response = await dio.get("v1/products.json?brand=maybelline");

      if(response.statusCode == HttpStatus.ok){

        final datas = response.data;
        
        if(datas is List){
          return await datas.map((e) => MaybellineModel.fromJson(e)).toList();
        }
      }else{
        return null;
      }
  }
}