import 'package:flutter/material.dart';
import 'package:task_statemanagement/cubits/register_cubit.dart';
import '../states/manage_states_password.dart';
import 'custom_button.dart';
import 'label_with_text_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PersonalInfomationBody extends StatefulWidget {
  const PersonalInfomationBody({super.key});

  @override
  State<PersonalInfomationBody> createState() => _PersonalInfomationBodyState();
}

class _PersonalInfomationBodyState extends State<PersonalInfomationBody> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        children: [
          const LabelWithTextField(labelField: "First Name"),
          const LabelWithTextField(labelField: "Last Name"),
          const LabelWithTextField(labelField: "E-Mail"),
          Consumer(
            builder: (context, ref, child) {
              return LabelWithTextField(
                labelField: "Password",
                obscureText: ref.watch(passwordVisibleProvider),
                onChanged: (value) {
                  ref
                      .read(passwordNotifierProvider.notifier)
                      .setPassword(value);
                },
                suffixIcon: IconButton(
                  iconSize: 20,
                  onPressed: () {
                    ref
                        .read(passwordVisibleProvider.notifier)
                        .update((state) => !state);
                  },
                  icon: ref.watch(passwordVisibleProvider.notifier).state
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility),
                ),
              );
            },
          ),
          Consumer(
            builder: (context, ref, child) {
              final String password = ref.watch(passwordNotifierProvider);

              return LabelWithTextField(
                labelField: "Confirm Password",
                obscureText: ref.watch(confirmPasswordVisibleProvider),
                validator: (value) {
                  if (value == password) {
                    return null;
                  } else {
                    return "not match";
                  }
                },
                suffixIcon: IconButton(
                  iconSize: 20,
                  onPressed: () {
                    ref
                        .read(confirmPasswordVisibleProvider.notifier)
                        .update((state) => !state);
                  },
                  icon: ref.watch(confirmPasswordVisibleProvider.notifier).state
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility),
                ),
              );
            },
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                RegisterCubit.get(context).completeStep1();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            textButton: "Next",
          ),
        ],
      ),
    );
  }
}
