import 'package:flutter/material.dart';

class ArchiveTasksScreen extends StatelessWidget {
  const ArchiveTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Archive Taks',
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}