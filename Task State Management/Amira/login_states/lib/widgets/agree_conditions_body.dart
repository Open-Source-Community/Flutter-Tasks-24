import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../cubits/register_cubit.dart';
import '../states/checkbox_states.dart';
import 'check_widget.dart';
import 'custom_button.dart';

class AgreeConditionsBody extends StatelessWidget {
  const AgreeConditionsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const CheckWidget(),
          const SizedBox(height: 32),
          Consumer(
            builder: (context, ref, child) => Visibility(
              visible: ref.watch(ischecked),
              child: CustomButton(
                textButton: "Finish",
                onTap: () {
                  RegisterCubit.get(context).completeAllSteps();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
