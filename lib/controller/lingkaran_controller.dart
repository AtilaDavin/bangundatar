import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranController extends GetxController{
  double r =0;
  final hasil = "".obs;
  final textColor = Rx<Color>(Colors.black);


  void hitungLuas(){
    double hitung = 3.14 *r*r;
    hasil.value = "Hasil Perhitungan luas dari 3.14 x $r x $r = $hitung";
    textColor.value = Colors.red;
  }

  void hitungKeliling(){
    double hitung = 2*3.14*r ;
    hasil.value = "Hasil Perhitungan Keliling 2 x 3.14 x $r = $hitung";
    textColor.value = Colors.amber;
  }
}