import 'package:bangun_datar_kelas_b/controller/lingkaran_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class  LingkaranPage extends StatelessWidget {
  LingkaranPage ({super.key});
  final LingkaranController _lingkaranController= Get.put(LingkaranController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lingkaran Page"),),
      body: Column(
        children: [
          Image.asset("assets/LingkaranWarna.png", height: 100,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Lingkaran", style: TextStyle(color: Colors.black),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.green.shade400,borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "Lingkaran merupakan turunan dari segi empat yang mempunyai ciri khusus keempat sisinya sama panjang dan keempat sudutnya siku-siku Persegi atau bujur sangkar adalah bangun datar dua dimensi yang dibentuk oleh empat buah rusuk yang sama panjang dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku. Persegi merupakan turunan dari segi empat yang mempunyai ciri khusus keempat sisinya sama panjang dan keempat sudutnya siku-siku."),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.redAccent,borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onChanged: (value){
                      _lingkaranController.r = double.parse(value);
                    },

                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: "Jari-jari",
                        hintText: "Masukkan Jari",
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
                            borderRadius: BorderRadius.all(Radius.circular(10)))),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                      ElevatedButton(onPressed: (){
                        _lingkaranController.hitungLuas();
                      }, child: Text("Hitung Luas", style: TextStyle(color: Colors.lightBlue)),
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.indigo)
                        ),
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(onPressed: (){
                        _lingkaranController.hitungKeliling();
                      }, child: Text("Hitung Keliling",  style: TextStyle(color: Colors.red)),
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.indigo)
                        ),
                      ),
                    )],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.black,borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Obx(() => Text(_lingkaranController.hasil.value,
                  style: TextStyle(color: _lingkaranController.textColor.value),
                )),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
