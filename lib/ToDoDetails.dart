import 'package:flutter/material.dart';

import 'models/task.dart';

class ToDoDetails extends StatelessWidget {
  final Task task;

  const ToDoDetails(this.task, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const SizedBox(
          width: double.infinity,
          child: Text(
            "Task details",
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blue[800],
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => {navigateToHome(context)}),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color: const Color.fromARGB(255, 232, 232, 232),
              style: BorderStyle.solid,
              width: 0.5),
        ),
        child: Column(children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              task.title,
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 3, 3, 3),
              ),
            ),
          ),
          SizedBox(height: 16,),
          Row(
            children: [
              Text(
                "Author",
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize:18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 184, 185, 191),
                ),
              ),
              SizedBox(width: 30),
              Text(
                (task.author as String),
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 3, 3, 3),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Type",
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize:18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 184, 185, 191),
                ),
              ),
              const SizedBox(width: 40),
              Text(
                (task.type as String),
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 3, 3, 3),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Description : ",
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize:18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 184, 185, 191),
                ),
              ),
              const SizedBox(width: 40),
              Text(
                (task.getDescription() as String),
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 3, 3, 3),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  void navigateToHome(context) {
    Navigator.pop(context);
  }
}
