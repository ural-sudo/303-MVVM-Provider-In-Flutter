

import 'package:flutter/material.dart';
import '../../product/Lists/maybelline_photo_list.dart';

class MaybellineView extends StatefulWidget {
  const MaybellineView({Key? key}) : super(key: key);

  @override
  State<MaybellineView> createState() => _MaybellineViewState();
}

class _MaybellineViewState extends State<MaybellineView> {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
          height: size.height,
          child: MaybellineListView(),
        );
  }
}

