import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../states/checkbox_states.dart';

class CheckWidget extends StatelessWidget {
  const CheckWidget({super.key});

// value set to false
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Consumer(
        builder: (context, ref, child) => CheckboxListTile(
          title: const Text('Agree to privacy policy, terms and condition'),
          subtitle: const Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          autofocus: false,
          isThreeLine: true,
          activeColor: Colors.purple,
          checkColor: Colors.white,
          selected: ref.watch(ischecked),
          value: ref.watch(ischecked),
          onChanged: (value) {
            ref.read(ischecked.notifier).state = value!;
          },
        ),
      ),
    );
  }
}
