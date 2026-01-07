import 'package:chatapp/domain/constants/cubits/themecubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Ondoardingscreen extends StatelessWidget {
  const Ondoardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Themes"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            BlocProvider.of<Themecubit>(context).toggletheme();
          }, icon: Icon(Icons.dark_mode_outlined)),
        ],
      ),
    );
  }
}
