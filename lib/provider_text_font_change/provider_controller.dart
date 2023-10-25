import 'package:flutter/material.dart';

class ProviderController extends ChangeNotifier {
  int _sizecount = 30;

  int get sizeCounter => _sizecount;
  void increment() {
    _sizecount++;
    notifyListeners();
  }

  void decrement() {
    _sizecount--;
    notifyListeners();
  }
}