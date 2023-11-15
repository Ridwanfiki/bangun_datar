import 'package:get/get.dart';

class JajarGenjangController extends GetxController{
  RxBool isHitungLuas = true.obs;
  int alas = 0;
  int tinggi = 0;
  int b = 0;
  final hasil = "".obs;

  void hitungLuas(){
    int hitung = alas * tinggi;
    hasil.value = "hasil perhitungan dari $alas x $tinggi = $hitung";
    isHitungLuas.value = true;
  }

  void hitungKeliling(){
    int hitung = 2 * (alas + b);
    hasil.value = "hasil perhitungan keliling 2 x ($alas + $b) = $hitung";
    isHitungLuas.value = false;
  }

}