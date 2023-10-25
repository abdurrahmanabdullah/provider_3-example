import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provider_list_controler.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return ProviderListControlle();
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: HomeScreenPage(),
        ),
      ),
    );
  }
}