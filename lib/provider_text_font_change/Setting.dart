import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_utube/provider_text_font_change/provider_controller.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final funProvider = Provider.of<ProviderController>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                funProvider.increment();
              },
              icon: const Icon(
                Icons.add_circle,
                size: 60,
              ),
              color: Colors.green,
            ),
            const SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: () {
                funProvider.decrement();
              },
              icon: const Icon(
                Icons.remove_circle_rounded,
                size: 60,
              ),
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}