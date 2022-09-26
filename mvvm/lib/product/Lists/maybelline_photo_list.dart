import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../mayballine/view-model/maybelline_viewModal.dart';

class MaybellineListView extends StatelessWidget {
  const MaybellineListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount:context.watch<MaybellineProvider>().maybellineList?.length,
      itemBuilder: (context, index) {
        return Card(
          child: Row(
            children: [
              Card(
                color: Colors.transparent,
                child: Image.network("${context.watch<MaybellineProvider>().maybellineList?[index].imageLink}",
                height: 50,
                ),
              ),
              Expanded(child: Text(" ${context.watch<MaybellineProvider>().maybellineList?[index].name}",))
            ],
          ),
        );
      },
    );
  }
}