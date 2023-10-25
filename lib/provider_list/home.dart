import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provider_list_controler.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    final changeProvider = Provider.of<ProviderListControlle>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("List view")),
        ),
        body: Padding(
          padding: const EdgeInsets.all(120.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    ///using consumer widget
                    // Consumer<ProviderListControlle>(
                    // builder: (context, changeProvider, child) {
                    // return Center(
                    // child: Text(
                    // "We are learning ${changeProvider.subject}",

                    child: Text(
                      "We are learning    ${Provider.of<ProviderListControlle>(context).subject}",
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    changeProvider.changeText("python");
                  },
                  child: const Text("python "),
                ),
                const SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  onPressed: () {
                    changeProvider.changeText("C++");
                  },
                  child: const Text("C++ "),
                ),
                const SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  onPressed: () {
                    changeProvider.changeText("C#");
                  },
                  child: const Text("C# "),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}