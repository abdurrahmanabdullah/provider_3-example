import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_utube/provider_text_font_change/provider_controller.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('About me ')),
      ),
      body: Consumer<ProviderController>(
        builder: (BuildContext context, objProviderController, child) {
          return Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            style: TextStyle(
                fontSize: objProviderController.sizeCounter.toDouble() == 30.0
                    ? 20
                    : objProviderController.sizeCounter.toDouble()),
          );
        },
      ),
    );
  }
}