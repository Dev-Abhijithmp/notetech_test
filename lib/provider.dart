import 'package:flutter/material.dart';

class Homeprovider extends ChangeNotifier {
  List<Map<String, dynamic>> viewdata = [];
  List<Map<String, dynamic>> temp = [];
  List<Map<String, dynamic>> data = [
    {'name': "Abhijith", 'age': 23, 'gender': 'male'},
    {'name': "Saheel", 'age': 23, 'gender': 'male'},
    {'name': "Anjali", 'age': 24, 'gender': 'female'},
    {'name': "Christeena", 'age': 22, 'gender': 'female'},
    {'name': "Ashif", 'age': 25, 'gender': 'male'},
    {'name': "Anuranj", 'age': 18, 'gender': 'male'},
  ];
  Homeprovider() {
    viewdata = data;
  }

  void filterfemale() {
    temp.clear();
    for (var element in data) {
      if (element['gender'] == 'female') {
        temp.add(element);
      }
    }
    viewdata = temp;
    notifyListeners();
  }

  void filtermale() {
    temp.clear();
    for (var element in data) {
      if (element['gender'] == 'male') {
        temp.add(element);
      }
    }
    viewdata = temp;
    notifyListeners();
  }

  void sortascend() {
    viewdata = data;
    viewdata.sort((a, b) => int.parse(a['age'].toString())
        .compareTo(int.parse(b['age'].toString())));
    notifyListeners();
  }

  void sortdesc() {
    viewdata = data;
    viewdata.sort((a, b) => int.parse(b['age'].toString())
        .compareTo(int.parse(a['age'].toString())));
    notifyListeners();
  }
}
