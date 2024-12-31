// Tüm takı sayfalarında kullanılacak olan bir container widget'ı oluşturur.
// Bu widget, verilen başlık ve resim yoluyla bir kutu oluşturur ve içine başlık ve resmi yerleştirir.
// ignore: file_names
import 'package:flutter/material.dart';

Widget buildContainer(String title, String imagePath) {
    return Container(
      color: const Color.fromARGB(255, 0, 0, 0), // Kutunun arka plan rengi
      padding: const EdgeInsets.all(16),  // Kutunun iç kenar boşlukları
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,  // Sütun içindeki elemanların dikey hizalaması
        children: [
          Image.asset(
            imagePath, // Resmin dosya yolu
            height: 100,  // Resmin yüksekliği
            width: 200,   // Resmin genişliği
          ),
          const SizedBox(height: 16), // Yazıdan önce biraz boşluk bırakmak için
          Text(
            title,  // Başlık metni
            style: const TextStyle(
              fontFamily: 'YourFontFamily',  // Yazı fontu
              color: Colors.white,           // Yazı rengi
              fontSize: 18,                 // Yazı boyutu
            ),
          ),
        ],
      ),
    );
  }
