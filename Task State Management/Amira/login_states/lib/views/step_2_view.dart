import 'package:flutter/material.dart';

import '../widgets/location_body.dart';

class Step2View extends StatelessWidget {
  const Step2View({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Step 2"),
        centerTitle: true,
      ),
      body: const LocationBody(),
    );
  }
}
