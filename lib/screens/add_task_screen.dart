import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Color.fromARGB(117, 117, 117, 117),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0,),
          topRight: Radius.circular(20.0))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text("Add text",
          textAlign: TextAlign.center,
          style: TextStyle(
            
            fontSize: 25,
            color: Colors.lightBlueAccent.shade100,
          ),
          ),
          const TextField(
            autofocus: true,
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: () => {},child: Text("Add",
          style: TextStyle(
            color: Colors.white,
            backgroundColor: Colors.lightBlueAccent
          ),),)
        ],
      ),),
      
    );
  }
}