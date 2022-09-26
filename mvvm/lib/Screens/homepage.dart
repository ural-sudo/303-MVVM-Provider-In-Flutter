
import 'package:flutter/material.dart';
import 'package:mvvm/global/theme_provider.dart';
import 'package:mvvm/mayballine/view-model/maybelline_viewModal.dart';

import '../mayballine/view/maybelline_view.dart';

import 'package:provider/provider.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override   
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: context.watch<MaybellineProvider>().isLoading ? CircularProgressIndicator(color: Colors.white,) :
         Text("If you want to change theme, Click button",style: TextStyle(fontSize: 13),),
        actions: [
          IconButton(onPressed: (){
            context.read<ThemeProvider>().changeTheme();
          }, icon: Icon(Icons.change_circle))
        ],

      ),
      body: MaybellineView(),
    );
  }
}