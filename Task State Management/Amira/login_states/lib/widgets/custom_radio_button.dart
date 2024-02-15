import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../states/radio_button_state.dart';

class CustomGenderRadioButton extends StatelessWidget {
  const CustomGenderRadioButton({
    super.key,
    required this.title,
    required this.textRadio1,
    required this.textRadio2,
  });
  final String title, textRadio1, textRadio2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(),
      ),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(fontSize: 16),
          ),
          const Divider(),
          Consumer(
            builder: (context, ref, child) {
              debugPrint("rebuild the RADIO third");
              return Row(
                children: [
                  Expanded(
                    child: RadioListTile(
                      title: Text(textRadio1),
                      value: textRadio1,
                      groupValue: ref.watch(isMale) ? "male" : "female",
                      onChanged: (value) {
                        ref.read(isMale.notifier).state = true;
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile(
                      title: Text(textRadio2),
                      value: textRadio2,
                      groupValue: ref.watch(isMale) ? "male" : "female",
                      onChanged: (value) {
                        ref.read(isMale.notifier).state = false;
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
