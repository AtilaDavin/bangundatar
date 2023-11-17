import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangController extends GetxController{
  int p =0;
  int l =0;
  final hasil = "".obs;
  final textColor = Rx<Color>(Colors.black);


  void hitungLuas(){
    int hitung = p * l;
    hasil.value = "Hasil Perhitungan luas dari $p x $l = $hitung";
    textColor.value = Colors.red;
  }

  void hitungKeliling(){
    int hitung = 2*p + 2*l;
    hasil.value = "Hasil Perhitungan Keliling 2 x $p + 2 x $l = $hitung";
    textColor.value = Colors.amber;
  }
}