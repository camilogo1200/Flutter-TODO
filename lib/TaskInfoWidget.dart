import 'package:flutter/material.dart';

class TaskInfoWidget extends StatefulWidget {
  const TaskInfoWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return TaskInfoState();
  }
}

class TaskInfoState extends State<TaskInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color: const Color.fromARGB(255, 232, 232, 232), width: 0.5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(children: [
            const Text(
              "421",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 3, 3, 4),
              ),
            ),
            const Text(
              "Overdue",
              style: TextStyle(color: Color.fromARGB(255, 184, 185, 191)),
            ),
            Container(height: 3, color: Colors.lightBlueAccent, width: 60)
          ]),
          Column(children: [
            const Text(
              "15",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 3, 3, 4),
              ),
            ),
            const Text(
              "To Do",
              style: TextStyle(color: Color.fromARGB(255, 184, 185, 191)),
            ),
            Container(height: 3, color: Colors.orangeAccent, width: 60)
          ]),
          Column(children: [
            const Text(
              "52",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 3, 3, 4),
              ),
            ),
            const Text(
              "Open",
              style: TextStyle(color: Color.fromARGB(255, 184, 185, 191)),
            ),
            Container(height: 3, color: Colors.deepPurpleAccent, width: 60)
          ]),
          Column(children: [
            const Text(
              "3",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 3, 3, 4),
              ),
            ),
            const Text(
              "Due Today",
              style: TextStyle(color: Color.fromARGB(255, 184, 185, 191)),
            ),
            Container(height: 3, color: Colors.red, width: 60)
          ])
        ],
      ),
    );
  }
}
