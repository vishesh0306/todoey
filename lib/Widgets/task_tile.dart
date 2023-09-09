
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Task 2",style: TextStyle(fontSize: 20),),
      trailing: Checkbox(value: false, onChanged: (bool? value) {  },),);
  }
}
