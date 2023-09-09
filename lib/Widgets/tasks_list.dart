import 'package:flutter/cupertino.dart';
import 'package:todoey/Widgets/task_tile.dart';

class TaskView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(),
        TaskTile(),
        TaskTile(),
        TaskTile(),
        TaskTile(),
        TaskTile(),
        TaskTile(),
        TaskTile(),
        TaskTile(),


      ],
    );
  }
}
