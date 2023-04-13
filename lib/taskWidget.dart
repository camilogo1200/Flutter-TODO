import 'package:flutter/material.dart';
import 'package:todo_list_app/ToDoDetails.dart';

import 'models/task.dart';

class TaskWidget extends StatefulWidget {
  const TaskWidget({super.key, required this.task});

  final Task task;

  @override
  State<StatefulWidget> createState() => TaskWidgetState();
}

class TaskWidgetState extends State<TaskWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          border: const Border(
            left: BorderSide(
              color: Colors.deepPurpleAccent,
              style: BorderStyle.solid,
              width: 2,
            ),
            bottom: BorderSide(
                color: Color.fromARGB(255, 232, 232, 232),
                style: BorderStyle.solid,
                width: 0.5),
            right: BorderSide(
                color: Color.fromARGB(255, 232, 232, 232),
                style: BorderStyle.solid,
                width: 0.5),
            top: BorderSide(
                color: Color.fromARGB(255, 232, 232, 232),
                style: BorderStyle.solid,
                width: 0.5),
          ),
        ),
        child: Column(children: [
          Row(
            children: [
              const Icon(
                Icons.add_alert,
                size: 18,
                color: Color.fromARGB(255, 160, 167, 176),
              ),
              Expanded(
                child: Text(
                  (widget.task.type?.toUpperCase() as String),
                  style: const TextStyle(color: Color.fromARGB(255, 184, 185, 191)),
                ),
              ),
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 56, 197, 188)),
              ),
              const SizedBox(width: 5),
              Text(
                "open".toUpperCase(),
                style:
                    const TextStyle(color: Color.fromARGB(255, 184, 185, 191)),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  }),
              Expanded(
                  child: Text(
                widget.task.title,
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 3, 3, 4)),
              )),
              IconButton(
                  onPressed: navigateToTaskDetails,
                  icon: Icon(Icons.arrow_forward_ios))
            ],
          ),
          Row(
            children: [
              Text(
                "For",
                style: TextStyle(color: Color.fromARGB(255, 184, 185, 191)),
              ),
              SizedBox(width: 6),
              Text(widget.task.author as String,
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(150, 3, 3, 4))),
              Icon(
                Icons.arrow_drop_down_rounded,
                size: 18,
              )
            ],
          )
        ]));
  }

  Color? getColor(Set<MaterialState> states) {
    Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
      MaterialState.selected,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.deepPurpleAccent;
    }

    return Colors.blue[800];
  }

  void navigateToTaskDetails() {
    var tk = widget.task;
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ToDoDetails(tk)),
    );
  }
}
