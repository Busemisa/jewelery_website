import 'package:jewelery/uygulama_gelistirme/buildItem.dart'; // buildItem.dart dosyasından buildItem widgetini içeri aktarıyoruz
import 'package:flutter/material.dart'; // Flutter materyal paketini içeri aktarıyoruz

class BileklikPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, // App bar'ın arka plan rengini siyah olarak ayarlıyoruz
        title: Text(
          'B İ L E K L İ K L E R ', // Sayfa başlığını belirliyoruz
          style: TextStyle(color: Colors.white), // Metin rengini beyaz olarak ayarlıyoruz
        ),
        iconTheme: IconThemeData(color: Colors.amber), // İkonların rengini turuncu olarak ayarlıyoruz
      ),
      body: GridView.count(
        crossAxisCount: 2, // 2 sütunlu bir grid view oluşturuyoruz
        children: [
          // Her bir bileklik için birer öğe ekliyoruz
          buildItem('Bileklik 1', 'assets/images/cengel.jpeg', '100 TL'), // Bileklik 1 öğesi
          buildItem('Bileklik 2', 'assets/images/cengel_gold.jpeg', '120 TL'), // Bileklik 2 öğesi
          buildItem('Bileklik 3', 'assets/images/kalp.jpeg', '80 TL'), // Bileklik 3 öğesi
          buildItem('Bileklik 4', 'assets/images/diken.jpeg', '150 TL'), // Bileklik 4 öğesi
          buildItem('Bileklik 5', 'assets/images/vahsi.jpeg', '90 TL'), // Bileklik 5 öğesi
          buildItem('Bileklik 6', 'assets/images/sade.jpeg', '110 TL'), // Bileklik 6 öğesi
        ],
      ),
    );
  }
}
