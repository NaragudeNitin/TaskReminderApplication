import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
 
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
 bool isChecked = false;

 void checkboxCallback (bool checkboxState) {
      setState(() {
        isChecked = checkboxState!;
      });
 }

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      title: Text("Your Tasks"),
      // style:  TextStyle(decoration: isChecked ? TextDecoration.lineThrough:null),
      
      trailing: TaskCheckBox(isChecked, checkboxCallback ),
      
      // trailing: TaskCheckBox(checkboxState: isChecked,
      //  toggleCheckboxState: checkboxCallback),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  
  final bool checkboxState;
  final Function toggleCheckboxState;
   TaskCheckBox(this.checkboxState, this.toggleCheckboxState);
  
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged:(value) {
        Text("here onchanged value must be shown");
      }, /* toggleCheckboxState */
    );} 
  }
