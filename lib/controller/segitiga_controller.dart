import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaController extends GetxController{
  int alas =0;
  int t = 0;
  int sisi1 = 0;
  int sisi2 = 0;
  int sisi3 = 0;
  final hasil = "".obs;
  final textColor = Rx<Color>(Colors.black);


  void hitungLuas(){
    double hitung = 0.5*alas*t ;
    hasil.value = "Hasil Perhitungan luas dari 0.5 x $alas x $t = $hitung";
    textColor.value = Colors.red;
  }

  void hitungKeliling(){
    int hitung = sisi1+sisi2+sisi3;
    hasil.value = "Hasil Perhitungan Keliling $sisi1+$sisi2+$sisi3 = $hitung";
    textColor.value = Colors.amber;
  }
}