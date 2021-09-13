import 'soru.dart';

class TestVeri {
  int _soruIndex = 0;

  List<Soru> _soruBankasi = [
    Soru(
        soruMetni:
            '1-İnsan DNA\'sı %50 oranında salatalık DNA\'sı ile aynıdır.',
        soruYaniti: false),
    Soru(soruMetni: '2-Ahtapotların 3 tane kalbi vardır.', soruYaniti: true),
    Soru(soruMetni: '3-Altın en iyi iletkendir.', soruYaniti: false),
    Soru(
        soruMetni:
            '4-Kanımızın vücudumuzu dolaşmasi yalnızca 22-23 saniye sürüyor.',
        soruYaniti: true),
    Soru(
        soruMetni: '5-Dünyadaki en kısa savaş 2 saat sürmüştür.',
        soruYaniti: false),
    Soru(
        soruMetni:
            '6-İran ordusu, 2007 yılında 14 sincabı ajan oldukları gerekçesiyle tutukladı.',
        soruYaniti: true),
    Soru(
        soruMetni: '7-İran\'ın yüzölçümü Türkiye\'nin yüzölçümünden büyüktür.',
        soruYaniti: true),
    Soru(
        soruMetni: '8-Avrupa\'nın en kalabalık şehri İstanbul\'dur.',
        soruYaniti: true),
    Soru(
        soruMetni: '9-Namaz, Arapça kökenli bir kelimedir.', soruYaniti: false),
    Soru(
        soruMetni: '10-Dinozorlar olmasaydı kuşlar olmazdı.', soruYaniti: true),
    Soru(
        soruMetni: '11-Aynı anda nefes alman ve yutkunman mümkün değildir.',
        soruYaniti: true),
    Soru(
        soruMetni: '12-Barcelona, İspanya\'nın başkentidir.',
        soruYaniti: false),
    Soru(soruMetni: '13-Kelebeklerin ömrü bir gündür.', soruYaniti: false),
    Soru(
        soruMetni: '14-Titanic gelmiş geçmiş en büyük gemidir.',
        soruYaniti: false),
    Soru(
        soruMetni: '15-Dünyadaki tavuk sayısı insan sayısından fazladır.',
        soruYaniti: true),
    Soru(soruMetni: '16-Dünya düzdür.', soruYaniti: false),
    Soru(
        soruMetni: '17-Kaju fıstığı aslında bir meyvenin sapıdır.',
        soruYaniti: true),
    Soru(
        soruMetni: '18-Fatih Sultan Mehmet hiç patates yememiştir.',
        soruYaniti: true),
    Soru(
        soruMetni: '19-Fransızlar 80 demek için, 4 - 20 der.', soruYaniti: true)
  ];

  String getSoruMetni() {
    return _soruBankasi[_soruIndex].soruMetni;
  }

  bool getSoruYaniti() {
    return _soruBankasi[_soruIndex].soruYaniti;
  }

  void sonrakiSoru() {
    if (_soruIndex < _soruBankasi.length - 1) {
      _soruIndex++;
    }
  }

  void sorulariBasaAl() {
    _soruIndex = 0;
  }

  bool testBittiMi() {
    if (_soruIndex + 1 >= _soruBankasi.length) {
      return true;
    } else {
      return false;
    }
  }
}
