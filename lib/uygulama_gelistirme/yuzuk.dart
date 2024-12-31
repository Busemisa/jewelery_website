import 'package:jewelery/uygulama_gelistirme/buildItem.dart'; // buildItem.dart dosyasından buildItem widgetini içeri aktarıyoruz
import 'package:flutter/material.dart'; // Flutter materyal paketini içeri aktarıyoruz

class YuzukPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, // AppBar'ın arka plan rengini siyah olarak ayarlıyoruz
        title: Text(
          'Y Ü Z Ü K L E R', // Sayfa başlığını belirliyoruz
          style: TextStyle(color: Colors.white), // Metin rengini beyaz olarak ayarlıyoruz
        ),
        iconTheme: IconThemeData(color: Colors.amber), // İkonların rengini turuncu olarak ayarlıyoruz
      ),
      body: GridView.count(
        crossAxisCount: 2, // 2 sütunlu bir grid view oluşturuyoruz
        children: [
          //buildItem widgeti ile her ürün için içerisinde isim, resim ve fiyat bilgisi girilebilecek bir card yapısı oluşturmuş olduk
          buildItem('Yüzük 1', 'assets/images/y_1.jpeg', '100 TL'), // Yüzük 1 öğesi
          buildItem('Yüzük 2', 'assets/images/y_2.jpeg', '150 TL'), // Yüzük 2 öğesi
          buildItem('Yüzük 3', 'assets/images/y_3.jpeg', '200 TL'), // Yüzük 3 öğesi
          buildItem('Yüzük 4', 'assets/images/y_4.jpeg', '250 TL'), // Yüzük 4 öğesi
          buildItem('Yüzük 5', 'assets/images/y_5.jpeg', '300 TL'), // Yüzük 5 öğesi
          buildItem('Yüzük 6', 'assets/images/y_6.jpeg', '350 TL'), // Yüzük 6 öğesi
        ],
      ),
    );
  }
}
