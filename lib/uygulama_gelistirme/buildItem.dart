// Bu widget, bir ürün öğesini temsil eden bir kart oluşturur.
// Kartın içinde bir resim, başlık ve fiyat bilgisi bulunur.
import 'package:flutter/material.dart';

Widget buildItem(String title, String imagePath, String price) {
    return Card(  // Bir Card widget'ı döndürür
      child: Column(  // Kartın içinde sütun yerleştirir
        children: [
          Image.asset(
            imagePath,  // Resmin dosya yolu
            height: 100,  // Resmin yüksekliği
            width: double.infinity, // Resmin genişliği, kartın genişliğine eşit olacak şekilde ayarlanır
            fit: BoxFit.cover,  // Resmin boyutunu ve pozisyonunu ayarlar
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),  // Padding ekler
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,  // Sütun içindeki elemanların yatay hizalaması
              children: [
                Text(
                  title,  // Ürün başlığı
                  style: TextStyle(fontWeight: FontWeight.bold),  // Başlık metninin stili
                ),
                SizedBox(height: 8),  // Başlık ile fiyat arasında boşluk bırakır
                Text(
                  'Fiyat: $price',  // Ürün fiyatı
                  style: TextStyle(color: const Color.fromARGB(255, 109, 1, 1)),  // Fiyat metninin stili
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
