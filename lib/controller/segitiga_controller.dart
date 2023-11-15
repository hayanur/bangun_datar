import 'package:get/get.dart';

class SegitigaController extends GetxController{
  RxBool isHitungLuas = true.obs;
  int alas = 0;
  int tinggi = 0;
  int sisisegitiga = 0;
  final hasil = "".obs;

  void hitungLuas(){
    double hitung = (alas * tinggi)/2;
    hasil.value = "Hasil perhitungan luasnya adalah $alas x $tinggi : 2 = $hitung cm2";
    isHitungLuas.value = true;
  }
  void hitungKeliling(){
    int hitung = sisisegitiga + sisisegitiga + alas;
    hasil.value = "Hasil perhitungan luasnya adalah $sisisegitiga + $sisisegitiga + $alas = $hitung cm";
    isHitungLuas.value = false;
  }
}