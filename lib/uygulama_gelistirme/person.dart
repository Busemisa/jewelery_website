import 'package:flutter/material.dart';

class PersonPage extends StatefulWidget { //durumsuz widget claasını kullandık
  @override
  _PersonPageState createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Ü Y E L İ K - G İ R İ Ş ',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.amber),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Üyelik bilgi kutusu
              Container(
                padding: EdgeInsets.all(8),
                color: Colors.amber, // Sarı arkaplan rengi
                child: Center(
                  child: Text(
                    'Sayfamıza üye olarak %10 indirim kazanabilirsiniz!',
                    style: TextStyle(
                      color: Colors.black, // Yazı rengi
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16), // Boşluk ekleyici SizedBox
              // E-posta giriş alanı
              TextField(
                decoration: InputDecoration(
                  labelText: 'E-posta',
                ),
              ),
              SizedBox(height: 16), // Boşluk ekleyici SizedBox
              // Şifre giriş alanı
              TextField(
                decoration: InputDecoration(
                  labelText: 'Şifre',
                ),
                obscureText: true,
              ),
              SizedBox(height: 16), // Boşluk ekleyici SizedBox
              // Telefon numarası giriş alanı
              TextField(
                decoration: InputDecoration(
                  labelText: 'Telefon Numarası',
                ),
              ),
              SizedBox(height: 16), // Boşluk ekleyici SizedBox
              // Üye olma butonu
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Buttonun arka plan rengi siyah
                ),
                onPressed: () {
                  // Üye Ol butonuna tıklandığında yapılacak işlemler
                },
                child: Text(
                  'Üye Ol',
                  style: TextStyle(color: Colors.white), // Yazı rengi beyaz
                ),
              ),
              SizedBox(height: 16), // Boşluk ekleyici SizedBox
              // Giriş yapma metni
              Center(
                child: Text(
                  'Zaten üye misiniz? Giriş yapın:',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 16), // Boşluk ekleyici SizedBox
              // E-posta giriş alanı
              TextField(
                decoration: InputDecoration(
                  labelText: 'E-posta',
                ),
              ),
              SizedBox(height: 16), // Boşluk ekleyici SizedBox
              // Şifre giriş alanı
              TextField(
                decoration: InputDecoration(
                  labelText: 'Şifre',
                ),
                obscureText: true,
              ),
              SizedBox(height: 16), // Boşluk ekleyici SizedBox
              // Giriş yapma butonu
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Buttonun arka plan rengi siyah
                ),
                onPressed: () {
                  // Giriş Yap butonuna tıklandığında yapılacak işlemler
                },
                child: Text(
                  'Giriş Yap',
                  style: TextStyle(color: Colors.white), // Yazı rengi beyaz
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
