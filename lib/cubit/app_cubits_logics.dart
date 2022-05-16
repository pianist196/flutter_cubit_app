import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit_app/cubit/app_cubit_states.dart';
import 'package:flutter_cubit_app/cubit/app_cubits.dart';
import 'package:flutter_cubit_app/pages/welcome_page.dart';

class AppCubitsLogics extends StatefulWidget {
  const AppCubitsLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitsLogics> createState() => _AppCubitsLogicsState();
}

class _AppCubitsLogicsState extends State<AppCubitsLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(builder: (context, state) {
        if(state is WelcomeState){
          return const WelcomePage();
        } else {
          return Container();
        }
      }),
    );
  }
}
