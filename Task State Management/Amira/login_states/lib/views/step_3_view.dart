import 'package:flutter/material.dart';

import '../widgets/agree_conditions_body.dart';

class Step3View extends StatelessWidget {
  const Step3View({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Step 3"),
        centerTitle: true,
      ),
      body: const AgreeConditionsBody(),
    );
  }
}
