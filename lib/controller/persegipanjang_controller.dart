import 'package:get/get.dart';

class PersegipanjangController extends GetxController{
  RxBool isHitungLuas = true.obs;
  int panjang = 0;
  int lebar = 0;
  final hasil = "".obs;

  void hitungLuas(){
    int hitung = panjang * lebar;
    hasil.value = "Hasil perhitungan luasnya adalah $panjang x $lebar = $hitung cm2";
    isHitungLuas.value = true;
  }
  void hitungKeliling(){
    int hitung = panjang + lebar + panjang + lebar;
    hasil.value = "Hasil perhitungan kelilingnya adalah $panjang + $lebar + $panjang + $lebar = $hitung cm";
    isHitungLuas.value = false;
  }
}