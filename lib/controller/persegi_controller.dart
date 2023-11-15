import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi = 0;
  final hasil = "".obs;

  void hitungLuas(){
    int hitung = sisi * sisi;
    hasil.value = "Hasil perhitungan luasnya adalah $sisi x $sisi = $hitung";
  }
  void hitungKeliling(){
    int hitung = 4 * sisi;
    hasil.value = "Hasil perhitungan kelilingnya adalah $sisi x 4 = $hitung";
  }
}