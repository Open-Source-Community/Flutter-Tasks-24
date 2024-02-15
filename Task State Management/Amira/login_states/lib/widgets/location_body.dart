import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../cubits/register_cubit.dart';
import '../states/radio_button_state.dart';
import 'custom_button.dart';
import 'custom_drop_down_button.dart';
import 'custom_radio_button.dart';
import 'custom_thirdparties_radio_button.dart';
import 'label_with_text_field.dart';

class LocationBody extends StatefulWidget {
  const LocationBody({super.key});

  @override
  State<LocationBody> createState() => _LocationBodyState();
}

class _LocationBodyState extends State<LocationBody> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 16),
      child: Form(
        key: formKey,
        child: ListView(
          children: [
            const CustomDropDownButton(
              items: [
                "New York",
                "London",
                "Tokyo",
              ],
              hint: "City",
            ),
            const SizedBox(height: 10),
            const CustomDropDownButton(
              hint: "Account Type",
              items: [
                "Personal",
                "Business",
                "Non-Commercial",
              ],
            ),
            const SizedBox(height: 10),
            const CustomDropDownButton(
              hint: "Membership Duration",
              items: [
                "Year",
                "Month",
                "Weak",
              ],
            ),
            const CustomGenderRadioButton(
              textRadio1: "male",
              textRadio2: "female",
              title: "Gender",
            ),
            const CustomThirdPartiesRadioButton(
              textRadio1: "no",
              textRadio2: "yes",
              title: "Third Parties",
            ),
            Consumer(
              builder: (context, ref, child) => Visibility(
                visible: ref.watch(isThirdParties),
                child: const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: LabelWithTextField(
                    labelField: "Name",
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            CustomButton(
              textButton: "Next",
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  RegisterCubit.get(context).completeStep2();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
