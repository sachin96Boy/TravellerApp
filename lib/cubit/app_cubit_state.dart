import 'package:equatable/equatable.dart';

abstract class AppCubitState extends Equatable {}

class InitialState extends AppCubitState {
  @override
  List<Object?> get props => [];
}

class LoadingState extends AppCubitState {
  @override
  List<Object?> get props => [];
}

class ErrorState extends AppCubitState {
  @override
  List<Object?> get props => [];
}

class LoadedState extends AppCubitState {
  @override
  List<Object?> get props => [];
}
