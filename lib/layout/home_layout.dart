import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/archive_tasks/archive_tasts.dart';
import 'package:flutter_application_1/modules/done_tasks/done_tasks.dart';
import 'package:flutter_application_1/modules/new_tasks/new_tasks_screen.dart';
//import 'package:sqflite/sqflite.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;
  List<Widget> screen = [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchiveTasksScreen(),
  ];

  List<String> titles = [
    'New Tasks',
    'Done Tasks',
    'Archive Tasks',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titles[currentIndex],
        ),
        backgroundColor: Colors.blue,
      ),
      body: screen[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            var name = await getName();
            print(name);

            throw ('some error !!');
          } catch (error) {
            print('error ${error.toString()}');
          }
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Tasks',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.check_circle_outline),
              label: 'Done',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.archive_outlined),
              label: 'Archive',
            ),
          ]),
    );
  }

  Future<String> getName() async {
    return 'rrr';
  }

  void creatDatabase() {
   
  }
}
