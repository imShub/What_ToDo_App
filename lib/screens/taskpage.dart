import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:what_todo_app/screens/homepage.dart';
import 'package:what_todo_app/widgets.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 24.0,
                        bottom: 12.0,
                      ),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: Image(
                                image: AssetImage(
                                    "assets/images/back_arrow_icon.png"),
                              ),
                            ),
                          ),
                          Expanded(
                              child: TextField(
                            decoration: InputDecoration(
                                hintText: "Enter Task Title",
                                border: InputBorder.none),
                            style: TextStyle(
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF211551),
                            ),
                          )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 12.0,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter the description for the task",
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 24.0,
                          ),
                        ),
                      ),
                    ),
                    ToDoWidget(
                      text: "Create Your First Task",
                      isDone: true,
                    ),
                    ToDoWidget(
                      text: "Create Your First To Do",
                      isDone: true,
                    ),
                    ToDoWidget(
                      isDone: false,
                    ),
                    ToDoWidget(
                      isDone: false,
                    ),
                  ],
                ),
                Positioned(
                  bottom: 24.0,
                  right: 24.0,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: Color(0XFFFe3577),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Image(
                          image: AssetImage("assets/images/delete_icon.png")),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
