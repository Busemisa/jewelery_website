import 'package:flutter/material.dart'; // Flutter materyal paketini içeri aktarıyoruz

class HakkimizdaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors
            .black, // AppBar'ın arka plan rengini siyah olarak ayarlıyoruz
        title: Text(
          'H A K K I M I Z D A', // Sayfa başlığını belirliyoruz
          style: TextStyle(
              color: Colors.white), // Metin rengini beyaz olarak ayarlıyoruz
        ),
        iconTheme: IconThemeData(
            color:
                Colors.amber), // İkonların rengini turuncu olarak ayarlıyoruz
      ),
      body: SingleChildScrollView(
        //body'i sarmalıyoruz ve scroll edilebilir bir sayfamız olmuş oluyor, kaydırma yapıp olası taşmaları engelliyoruz
        child: Container(
          color: Colors.grey[300], // Ana sayfa arkaplan rengi
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment
                .stretch, // Sütun içindeki elemanların yatay yönde genişlemesini sağlar
            children: [
              CircleAvatar(
                //Daire içinde resim koymamızı sağlar
                backgroundImage: AssetImage('assets/images/kalp.jpeg'),
                radius: 50,
              ),
              SizedBox(height: 20), // Boşluk ekliyoruz
              Text(
                'M U S S O - J E W E L R Y', // Firma adını belirtiyoruz
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold), // Metin stilini belirliyoruz
              ),
              SizedBox(height: 10), // Boşluk ekliyoruz
              Text(
                'M U S S O, 2010 yılında İstanbulda kurulmuş bir aile şirketidir. Takı sektöründeki deneyimimiz ve tutkumuzla, her mücevherimizi özenle seçiyor ve özenle işliyoruz. Müşterilerimize yüksek kaliteli ve benzersiz tasarımlar sunmaktan gurur duyuyoruz.',

                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16), // Metin stilini belirliyoruz
              ),
              SizedBox(height: 20), // Boşluk ekliyoruz
              Text(
                'İletişim Bilgileri', // İletişim bilgileri başlığı
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold), // Metin stilini belirliyoruz
              ),
              SizedBox(height: 10), // Boşluk ekliyoruz
              SizedBox(height: 10), // Boşluk ekliyoruz
              SizedBox(height: 10), // Boşluk ekliyoruz
              Text(
                'Adres: Firma adresi, Şehir, Ülke\n' // Adres
                'Telefon: 1234567890\n' // Telefon numarası
                'E-posta: info@firma.com', // E-posta adresi
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16), // Metin stilini belirliyoruz
              ),
              SizedBox(height: 20), // Boşluk ekliyoruz
              Center(
                child: Card(
                  elevation: 4,
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          //Yuvarlak yapı içerisine resim koymamızı sağlar
                          backgroundImage:
                              AssetImage('assets/images/kalp.jpeg'),
                          radius: 30,
                        ),
                        SizedBox(height: 20), // Boşluk ekliyoruz
                        Text(
                          'Aldığınız takıları Instagram hesabımızdan paylaştığınız takdirde, bizlerden süpriz hediyeler kazanma imkanı yaklayacaksınız!', // Promosyon metni
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              color:
                                  Colors.white), // Metin stilini belirliyoruz
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20), // Boşluk ekliyoruz
              Container(
                color: Colors
                    .black, // Bilgilendirme kutusunun arka plan rengini siyah olarak ayarlıyoruz
                padding: EdgeInsets.all(16), // Kenar boşluğunu belirliyoruz
                child: Text(
                  '2000 TL ÜZERİ KARGO BEDAVA', // Kargo bedava bilgilendirmesi
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color:
                        Colors.white, // Metin rengini beyaz olarak ayarlıyoruz
                    fontSize: 18, // Metin boyutunu belirliyoruz
                  ),
                ),
              ),
              SizedBox(height: 20), // Boşluk ekliyoruz
            ],
          ),
        ),
      ),
    );
  }
}
