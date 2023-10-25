import 'package:flutter/cupertino.dart';

class ProviderListControlle extends ChangeNotifier {
  String subject = " ";
  void changeText(newText) {
    subject = newText;
    notifyListeners();
  }
}