import 'package:chatapp/domain/constants/cubits/themestates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Themecubit extends Cubit<Themestates> {
  Themecubit() : super(LightThemeStates());

  void toggletheme() {
    if (state is LightThemeStates) {
      emit(DarkThemeStates());
    } else {
      emit(LightThemeStates());
    }
  }
}
