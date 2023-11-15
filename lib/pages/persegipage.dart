import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ridwan_bangun_datar/controller/persegi_controller.dart';

class PersegiPage extends StatelessWidget {
   PersegiPage({super.key});
   final PersegiController _persegiController = Get.put(PersegiController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Persegi Page"),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/persegi.png",
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("persegi"),
          ),
          Text(
              "Persegi atau bujur sangkar adalah bangun datar dua dimensi yang dibentuk oleh empat buah rusuk yang sama panjang dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku."),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              onChanged: (value){
                _persegiController.sisi=int.parse(value);
              },
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                labelText: 'sisi',
                hintText: 'hint',
                hintStyle: TextStyle(color: Colors.grey.shade400),
                contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(10)))),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                    child: Text(
                      "Hitung Luas",
                          style: TextStyle(color: Colors.white),
                    ),
                    onPressed: (){
                      _persegiController.hitungLuas();
                    },
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
              ),
                child: Text(
                  "Hitung Keliling",
                  style: TextStyle(color: Colors.white),
                ),
                  onPressed: (){
                    _persegiController.hitungKeliling();
                  },
              ),
            ],
          ),

          Obx(
                  () => Text(
                    _persegiController.hasil.value,
                    style: TextStyle(
                        color: _persegiController.isHitungLuas.value
                        ? Colors.green
                        : Colors.yellow,
    ),
                  ),
          ),
            ],
      ),
    );
  }
}
