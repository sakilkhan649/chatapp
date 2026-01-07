import 'package:chatapp/domain/constants/appthemes.dart';
import 'package:chatapp/domain/constants/cubits/themecubit.dart';
import 'package:chatapp/domain/constants/cubits/themestates.dart';
import 'package:chatapp/repository/screens/onboarding/ondoardingscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(create: (_) => Themecubit(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Themecubit, Themestates>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Chat App',
          theme: state is LightThemeStates
              ? Appthemes.lightTheme
              : Appthemes.darkThem,
          home: Ondoardingscreen(),
        );
      },
    );
  }
}
