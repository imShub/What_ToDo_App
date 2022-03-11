import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:what_todo_app/screens/taskpage.dart';
import 'package:what_todo_app/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          color: Color(0xFFF6F6F6),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 32.0,
                      bottom: 32.0,
                    ),
                    child: Image(
                      image: AssetImage('assets/images/logo.png'),
                    ),
                  ),
                  Expanded(
                    child: ScrollConfiguration(
                      behavior: NoGlowBehavior(),
                      child: ListView(
                        children: [
                          TaskCardWidget(
                            title: "Get Started",
                            desc:
                                "Hello World ! Welcome to What ToDO App, this is a default task that you can edit or delete to start using the app.",
                          ),
                          TaskCardWidget(),
                          TaskCardWidget(),
                          TaskCardWidget(),
                          TaskCardWidget(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 24.0,
                right: 0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TaskPage(),
                        ));
                  },
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0XFF7349FE), Color(0XFF643FDB)],
                        begin: Alignment(0.0, -1.0),
                        end: Alignment(0.0, 1.0),
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child:
                        Image(image: AssetImage("assets/images/add_icon.png")),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
