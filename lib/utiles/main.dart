// ignore_for_file: use_super_parameters

/*import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_iti/screens/cubit/play_cubit.dart';
import 'package:state_management_iti/screens/state_management.dart';
//import 'package:state_management_iti/screens/state_management.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => PlayCubit(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // ignore: use_super_parameters
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const StateManagement(),
    );
  }
}*/

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_iti/screens/mycubit.dart';
//import 'package:state_management_iti/screens/radio_cubit.dart';
import 'package:state_management_iti/screens/task3_cubit.dart';
//import 'package:state_management_iti/screens/task4_cubit.dart'; // تأكد من مسار استيراد الملف
void main() {
  runApp(
    BlocProvider(
      create: (context) => MyCubit(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  PlayWithStatemanagment3(),
    );
  }
}
