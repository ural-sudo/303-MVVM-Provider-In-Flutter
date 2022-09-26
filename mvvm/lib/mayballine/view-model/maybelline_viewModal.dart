

import 'package:flutter/material.dart';
import 'package:mvvm/mayballine/model/maybelline_model.dart';
import 'package:mvvm/mayballine/service/maybelline_service.dart';

class MaybellineProvider extends ChangeNotifier{

  final IMaybellineService service;
  bool isLoading = false;
  List<MaybellineModel>? maybellineList =[];
  

  void _changeLoading(){
    isLoading = !isLoading;
    notifyListeners();
  }

  //Constructor of MaybellineProvider
  MaybellineProvider(this.service){
    fetch();
  }

  Future<void> fetch() async {
    _changeLoading();
    maybellineList = await service.getProducts() ?? [];
    _changeLoading();
  }


}