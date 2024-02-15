import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_statemanagement/cubits/register_cubit.dart';
import '../cubits/register_states.dart';
import 'home_view.dart';
import 'step_1_view.dart';
import 'step_2_view.dart';
import 'step_3_view.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterSteps>(
      builder: (context, state) {
        if (state is NavigateToStep2) {
          return const Step2View();
        }
        if (state is NavigateToStep3) {
          return const Step3View();
        }
        if (state is InitialStepState) {
          return const Step1View();
        }
        return const HomeView();
      },
    );
  }
}
