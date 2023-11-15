import 'package:get/get.dart';

class SegitigaController extends GetxController{
  RxBool isHitungLuas = true.obs;
  int alas = 0;
  int tinggi = 0;
  int sisi = 0;
  int sisil = 0;
  final hasil = "".obs;

  void hitungLuas(){
    double hitung =   alas * tinggi /2 ;
    hasil.value = "hasil perhitungan dari $alas x $tinggi x 1/2 = $hitung";
    isHitungLuas.value = true;
  }

  void hitungKeliling(){
    int hitung = alas + sisi + sisil;
    hasil.value = "hasil perhitungan keliling $alas + $sisi + $sisil = $hitung";
    isHitungLuas.value = false;
  }

}