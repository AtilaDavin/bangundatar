import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi =0;
  final hasil = "".obs;
  final warna = Rx<Color>(Colors.black);

  void hitungLuas(){
    int hitung = sisi*sisi;
    hasil.value = "Hasil Perhitungan luas dari $sisi x $sisi = $hitung";
    warna.value = Colors.red;
  }

  void hitungKeliling(){
    int hitung = 4*sisi;
    hasil.value = "Hasil Perhitungan Keliling 4 x $sisi = $hitung";
    warna.value = Colors.amber;
  }
}