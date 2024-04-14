import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:rayshardenov_s_devochki2/bottom_sheets/add_task_view.dart';
import 'package:rayshardenov_s_devochki2/bottom_sheets/header_view.dart';
import 'package:rayshardenov_s_devochki2/bottom_sheets/header_view2.dart';
import 'package:rayshardenov_s_devochki2/bottom_sheets/header_view3.dart';
import 'package:rayshardenov_s_devochki2/bottom_sheets/header_view4.dart';
import 'package:rayshardenov_s_devochki2/bottom_sheets/header_view7.dart';
import 'package:rayshardenov_s_devochki2/bottom_sheets/task_info_view.dart';
import 'package:rayshardenov_s_devochki2/bottom_sheets/task_list_view.dart';


class AnimePage extends StatelessWidget {
  const AnimePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          bottom: false,
          child: Column(
            
            children: [
              // Header View
              Expanded(flex: 1, child: HeaderView7()),

              // Task Info View
              Expanded(flex: 1, child: TaskInfoView()),

              // Task List View
              Expanded(flex: 7, child: TaskListView()),
            ],
          ),
        ),
        
        floatingActionButton: const AddTaskView());
  }
}