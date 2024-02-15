import 'package:flutter/material.dart';
import 'package:task_statemanagement/widgets/custom_button.dart';

import '../cubits/register_cubit.dart';
import 'register_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              textButton: "Register",
              onTap: () {
                RegisterCubit.get(context).initial();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterView(),
                  ),
                );
              },
            ),
            const SizedBox(height: 30),
            CustomButton(
              textButton: "Follow UP",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
