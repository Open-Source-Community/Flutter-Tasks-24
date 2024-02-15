import 'package:flutter/material.dart';

import '../widgets/personal_info_body.dart';

class Step1View extends StatelessWidget {
  const Step1View({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Step 1"),
        centerTitle: true,
      ),
      body: const PersonalInfomationBody(),
    );
  }
}
