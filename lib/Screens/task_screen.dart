import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/Screens/add_task_screen.dart';
import '../Widgets/tasks_list.dart';
import 'add_task_screen.dart';

class TasksScreen extends StatelessWidget {

  Widget buildBottomSheet(BuildContext){
    return Container(
      // height: 300,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () { showModalBottomSheet(context: context, builder: (context) => AddTaskScreen());},
        child: Icon(Icons.add,size: 30,),backgroundColor: Colors.lightBlueAccent,),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 60,left: 30,right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(child: Icon(Icons.list,size: 30,color: Colors.lightBlueAccent,),backgroundColor: Colors.white,radius: 30,),
                    SizedBox(height: 20),
                    Text("To Do List",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.white),),
                    SizedBox(height: 10),
                    Text("12 Tasks",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white),),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                ),

                child: Padding(
                  padding: const EdgeInsets.only(top: 30,left: 30,right: 30),
                  child: TaskView(),
                ),
                ),
            ),


          ],
        ),
      ),
    );
  }
}

