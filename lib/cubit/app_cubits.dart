import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_traveller_app/cubit/app_cubit_state.dart';

class AppCubits extends Cubit<AppCubitState> {
  AppCubits() : super(InitialState());

  void loading() {
    emit(LoadingState());
  }
}
