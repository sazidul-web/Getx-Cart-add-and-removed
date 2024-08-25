import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mycontroller extends GetxController {
  var Books = 0.obs;
  var Pens = 0.obs;
  int get sum => Books.value + Pens.value;
  increment() {
    Books.value++;
  }

  dcrement() {
    if (Books.value <= 0) {
      Get.snackbar(
        'Buying Books',
        'You are not less then zero',
        icon: Icon(Icons.alarm),
        barBlur: 20,
        isDismissible: true,
        duration: Duration(seconds: 3),
      );
    } else {
      Books.value--;
    }
  }

  incrementpens() {
    Pens.value++;
  }

  dcrementpends() {
    if (Pens.value <= 0) {
      Get.snackbar('Buying Pens', 'You are not less then zero',
          icon: Icon(Icons.alarm),
          barBlur: 20,
          isDismissible: true,
          duration: Duration(seconds: 3));
    } else {
      Pens.value--;
    }
  }
}
