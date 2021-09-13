import 'package:bilgi/test_veri.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo[800],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SoruSayfasi(),
          ),
        ),
      ),
    );
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List<Widget> secimler = [];
  TestVeri test_1 = TestVeri();

  void butonFonksiyonu(bool secilenButton) {
    if (test_1.testBittiMi() == true) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('TESTİNİZ BİTTİ PUANINIZ= -----text----- '),
              content: Text('Hadi kendini bir daha dene'),
              actions: <Widget>[
                FlatButton(
                  color: Colors.blue[900],
                  onPressed: () {
                    Navigator.of(context).pop();
                    setState(() {
                      test_1.sorulariBasaAl();
                      secimler = [];
                    });
                  },
                  child: Text('Başa Dön'),
                )
              ],
              elevation: 25,
              backgroundColor: Colors.blue[300],
            );
          });
    } else {
      setState(() {
        test_1.getSoruYaniti() == secilenButton
            ? secimler.add(kDogruIconu)
            : secimler.add(kYanlisIconu);
        test_1.sonrakiSoru();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                '${test_1.getSoruMetni()}',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
        Wrap(
          runSpacing: 3,
          spacing: 5,
          children: secimler,
        ),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.0),
                  child: RaisedButton(
                      padding: EdgeInsets.all(12),
                      color: Colors.green,
                      child: Icon(
                        Icons.thumb_up,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                        print(secimler.length + 1);
                        butonFonksiyonu(true);
                      }),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.0),
                  child: RaisedButton(
                      padding: EdgeInsets.all(12),
                      color: Colors.red,
                      child: Icon(
                        Icons.thumb_down,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                        butonFonksiyonu(false);
                      }),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
