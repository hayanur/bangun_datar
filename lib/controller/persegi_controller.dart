import 'package:get/get.dart';

class PersegiController extends GetxController{
  RxBool isHitungLuas = true.obs;
  int sisi = 0;
  final hasil = "".obs;

  void hitungLuas(){
    int hitung = sisi * sisi;
    hasil.value = "Hasil perhitungan luasnya adalah $sisi x $sisi = $hitung cm2";
    isHitungLuas.value = true;
  }
  void hitungKeliling(){
    int hitung = 4 * sisi;
    hasil.value = "Hasil perhitungan kelilingnya adalah $sisi x 4 = $hitung cm";
    isHitungLuas.value = false;
  }
}