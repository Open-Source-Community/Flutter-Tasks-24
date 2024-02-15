import 'package:flutter_bloc/flutter_bloc.dart';

import 'register_states.dart';

class RegisterCubit extends Cubit<RegisterSteps> {
  RegisterCubit() : super(InitialStepState());
  static get(context) => BlocProvider.of<RegisterCubit>(context);
  void initial() {
    emit(InitialStepState());
  }

  void completeStep1() {
    emit(NavigateToStep2());
  }

  void completeStep2() {
    emit(NavigateToStep3());
  }

  void completeAllSteps() {
    emit(AllStepsDone());
  }
}
