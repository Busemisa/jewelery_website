import 'package:flutter/material.dart';
import 'bileklik.dart'; // Bileklik sayfasını içeri aktarıyoruz
import 'yuzuk.dart'; // Yüzük sayfasını içeri aktarıyoruz
import 'kolye.dart'; // Kolye sayfasını içeri aktarıyoruz

class SepetPage extends StatefulWidget { //Bu widget, kullanıcı etkileşimine bağlı olarak içeriğini değiştirebilir. 
  @override
  _SepetPageState createState() => _SepetPageState();
}

class _SepetPageState extends State<SepetPage> {
  List<String> urunler = []; // Sepete eklenen ürünlerin listesi

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Sepetim',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.amber),
      ),
      body: Center(
        // Eğer sepette ürün yoksa gösterilecek widget'lar
        child: urunler.isEmpty
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Sepette ürün yok uyarısı
                  Text(
                    'Sepette ürün yok.',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  // Ürün ekleme butonları
                  Text(
                    'Sepetinize ürün eklemek için aşağıdaki butonlara tıklayabilirsiniz:',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BileklikPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: Text(
                      'Bileklik Ekle',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => YuzukPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: Text(
                      'Yüzük Ekle',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => KolyePage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: Text(
                      'Kolye Ekle',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              )
            // Sepette ürün varsa gösterilecek widget
            : ListView.builder(
                itemCount: urunler.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(urunler[index]),
                  );
                },
              ),
      ),
      // Ürün ekleme floating action button'u
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _urunEkleDialog(context);
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
    );
  }

  // Ürün ekleme dialogunu gösteren metot
  Future<void> _urunEkleDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Sepete Ürün Ekle'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                // Bileklik ekleme butonu
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      urunler.add('Bileklik'); // Bileklik eklemesi
                    });
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: Text(
                    'Bileklik Ekle',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                // Yüzük ekleme butonu
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      urunler.add('Yüzük'); // Yüzük eklemesi
                    });
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: Text(
                    'Yüzük Ekle',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                // Kolye ekleme butonu
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      urunler.add('Kolye'); // Kolye eklemesi
                    });
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: Text(
                    'Kolye Ekle',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
