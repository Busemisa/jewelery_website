import 'package:jewelery/uygulama_gelistirme/buildContainer.dart';
import 'package:flutter/material.dart';
import 'bileklik.dart';
import 'yuzuk.dart';
import 'kolye.dart';
import 'hakkimizda.dart';
import 'person.dart';
import 'sepet.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'M U S S O', // Uygulama başlığı
      theme: ThemeData(
        primaryColor:
            const Color.fromARGB(255, 76, 23, 23), // AppBar arka planı siyah olacak
      ),
      debugShowCheckedModeBanner: false,
      home: DenemePage(), // Ana sayfa
    );
  }
}

class DenemePage extends StatelessWidget {
  DenemePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            SizedBox(width: 8), // Marka adından önce biraz boşluk bırakmak için
            Text(
              'M U S S O',
              style: TextStyle(
                fontFamily: 'YourFontFamily', // Marka adı fontu
                color: Colors.white, // Marka adı rengi beyaz olacak
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search), // Arama ikonu
            onPressed: () {
              // Büyüteç ikonuna basıldığında yapılacak işlemler
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle), // Kullanıcı ikonu
            onPressed: () {
              // Kişisel ikonuna basıldığında yapılacak işlemler
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PersonPage()), // PersonPage'e git
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart), // Sepet ikonu
            onPressed: () {
              // Alışveriş sepeti ikonuna basıldığında yapılacak işlemler
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SepetPage()), // SepetPage'e git
              );
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.black, // Ana sayfa arka plan rengi siyah
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 200, // Resmin yüksekliği
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/kolye.jpeg'), // Resmin adı ve uzantısı
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                  height: 4,
                  child: Container(
                    color: Colors.amber,
                  )),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BileklikPage()),
                  );
                },
                child: buildContainer(
                    'Bileklik', 'assets/images/bileklik_kare.png'), // Bileklik bölümü
              ),
              SizedBox(
                  height: 4,
                  child: Container(
                    color: Colors.amber,
                  )),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => YuzukPage()),
                  );
                },
                child: buildContainer('Yüzük', 'assets/images/yuzuk_kare.png'), // Yüzük bölümü
              ),
              SizedBox(
                  height: 4,
                  child: Container(
                    color: Colors.amber,
                  )),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => KolyePage()),
                  );
                },
                child: buildContainer('Kolye', 'assets/images/kare_kolye.png'), // Kolye bölümü
              ),
              SizedBox(
                  height: 4,
                  child: Container(
                    color: Colors.amber,
                  )),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HakkimizdaPage()),
                  );
                },
                child: buildContainer(
                    'Hakkımızda', 'assets/images/hakkimda_kare.png'), // Hakkımızda bölümü
              ),
              SizedBox(
                  height: 4,
                  child: Container(
                    color: Colors.amber,
                  )),
              Container(
                color: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 16),
                child: const Center(
                  child: Text(
                    '2000 TL ÜZERİ KARGO BEDAVA', // Kargo bedava bilgilendirmesi
                    style: TextStyle(
                      fontFamily: 'YourFontFamily',
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
