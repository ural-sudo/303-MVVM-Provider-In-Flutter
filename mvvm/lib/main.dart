import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mvvm/Screens/homepage.dart';
import 'package:mvvm/global/theme_provider.dart';
import 'package:mvvm/mayballine/service/maybelline_service.dart';
import 'package:mvvm/mayballine/view-model/maybelline_viewModal.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers:[
      ChangeNotifierProvider<MaybellineProvider>(
        create: (context) {
          return MaybellineProvider(MaybellineService(Dio(BaseOptions(baseUrl: "https://makeup-api.herokuapp.com/api/"))));
        },
      ),
      ChangeNotifierProvider<ThemeProvider>(
        create: (context) {
          return ThemeProvider();
        },
      )
    ],
    builder:(context,child){
      return MyApp();
    },
  )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: context.watch<ThemeProvider>().isLightTheme ? ThemeData.light() : ThemeData.dark(),
      home:Homepage(),
    );
  }
}


