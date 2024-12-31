import 'package:jewelery/uygulama_gelistirme/buildItem.dart'; // buildItem.dart dosyasından buildItem widgetini içeri aktarıyoruz
import 'package:flutter/material.dart'; // Flutter materyal paketini içeri aktarıyoruz

class KolyePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, // AppBar'ın arka plan rengini siyah olarak ayarlıyoruz
        title: Text(
          'K O L Y E L E R', // Sayfa başlığını belirliyoruz
          style: TextStyle(color: Colors.white), // Metin rengini beyaz olarak ayarlıyoruz
        ),
        iconTheme: IconThemeData(color: Colors.amber), // İkonların rengini turuncu olarak ayarlıyoruz
      ),
      body: GridView.count(
        crossAxisCount: 2, // 2 sütunlu bir grid view oluşturuyoruz
        children: [
          buildItem('Kolye 1', 'assets/images/k_1.jpeg', '200 TL'), // Kolye 1 öğesi
          buildItem('Kolye 2', 'assets/images/k_2.jpeg', '250 TL'), // Kolye 2 öğesi
          buildItem('Kolye 3', 'assets/images/k_3.jpeg', '300 TL'), // Kolye 3 öğesi
          buildItem('Kolye 4', 'assets/images/k_4.jpeg', '350 TL'), // Kolye 4 öğesi
          buildItem('Kolye 5', 'assets/images/k_5.jpeg', '400 TL'), // Kolye 5 öğesi
          buildItem('Kolye 6', 'assets/images/k_6.jpeg', '450 TL'), // Kolye 6 öğesi
        ],
      ),
    );
  }
}
