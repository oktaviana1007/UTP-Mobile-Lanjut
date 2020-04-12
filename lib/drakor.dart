import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Container> daftarDrama = new List();

  var drama=[
    {"nama":"Leverage","gambar":"leverage.jpg","sinopsis":"Leverage menceritakan tentang Lee Tae-Joon dia seorang penyelidik penipuan asuransi yang sangat baik. Kasus tak terduga mengubah hidupnya. Dia berhenti dari pekerjaannya dan merekrut penjahat berbakat, yang pernah dia tangkap, untuk membentuk tim penipuan elit."},
    {"nama":"Dr Romantic Kim2","gambar":"dr2.jpg","sinopsis":"Romantic Doctor Kim 2 merupakan sekuel dari drama sebelumnya dan merupakan drama medis yang diperankan oleh Han Suk Kyu, Lee Sung Kyung, dan Ahn Hyi Seop."},
    {"nama":"Extraordinary You","gambar":"ey.jpg","sinopsis":"'Extraordinary You' bercerita tentang Eun Dan Oh (Kim Hye Yoon), seorang gadis sekolah menengah yang menyadari bahwa dia adalah karakter dalam manhwa (komik Korea) dan melakukan yang terbaik untuk melawan nasibnya. "},
    {"nama":"Fight For My Way","gambar":"ffmw.jpg","sinopsis":"Drama ini bercerita tentang kehidupan 4 orang yang sudah lama bersahabat.Untuk mencapai impian mereka, mereka harus melewati berbagai rintangan yang sulit dan yang pastinya menguji ketangguhan mereka dalam menjalani hidup."},
    {"nama":"Itaewon Class","gambar":"itaewon.jpg","sinopsis":"Itaewon Class menceritakan tetang mantan terpidana Park Sae-roy (Park Seo-joon) yang hidupnya telah terbalik setelah ia dikeluarkan dari sekolah karena meninju perundung, dan ayahnya terbunuh dalam suatu kecelakaan."},    
    {"nama":"w","gambar":"w.jpg","sinopsis":"Dibintangi oleh Lee Jong-Suk dan Han Hyo-Joo, alurnya bercerita tentang hubungan asmara antara Kang Chul, seorang pria kaya yang eksis di webtoon bertajuk W, serta Oh Yeon-Joo, seorang dokter bedah muda yang belum begitu mahir."},
    {"nama":"Save Me","gambar":"saveme.jpg","sinopsis":"Seorang gadis dikelilingi oleh orang-orang yang mencurigakan dan dengan diam-diam berbisik, Selamatkan aku! di gang lingkungan yang gelap, dan beberapa pemuda menganggur mendengarnya dan lari menyelamatkannya. Mereka menemukan bahwa dia adalah pemuja aliran sesat dan mencoba membantunya."},
    {"nama":"Let's Fight Ghost","gambar":"lfg.jpg","sinopsis":"Bercerita tentang hubungan antara Park Bong-pal dengan Kim So-hyun. Park Bong-pal adalah seorang mahasiswa Fakultas Ekonomi yang terobsesi untuk mengumpulkan uang sejumlah 100 juta won dengan memanfaatkan kemampuannya dalam berinteraksi makhlus halus. Sedangkan Kim So-hyun adalah seorang hantu siswi wanita yang gentayangan dalam 5 tahun terakhir."},
    {"nama":"Vagabond","gambar":"vagabond.jpeg","sinopsis":"Vagabond bercerita tentang seorang stuntman bernama Cha Dal Gun (Lee Seung Gi) yang bekerja sama dengan agen National Intelligent Service (NIS) bernama Go Hae Ri (Suzy) untuk mengungkap kebenaran di balik kasus kecelakaan pesawat b357 yang menewaskan keponakan Dal Gun, Cha Hoon."},
    {"nama":"Supacious Patner","gambar":"sp.jpg","sinopsis":"Cerita tentang jaksa berotak brilian Noh Ji-wook (Ji Chang-wook), dan seorang magang pemula di departemen hukum Eun Bong-hee (Nam Ji-hyun), yang harus bekerja sama dalam kasus misterius yang melibatkan seorang pembunuh amnesia."},
  ];

  _buatlist()async{
    for (var i=0; i<drama.length; i++){
      final dramanya = drama[i];
      final String gambar = dramanya["gambar"];

      daftarDrama.add(
        new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Card(
            child: new Column(
              children: <Widget>[
                new Hero(tag: dramanya['nama'],
                 child: Material(
                   child: new InkWell(
                   onTap: () =>
                        Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => new Detail(
                                    nama: dramanya['nama'],
                                    gambar: gambar,
                                    sinopsis: dramanya['sinopsis'],
                                  ),
                        )),
                        child: new Image.asset("img/$gambar", fit:BoxFit.cover),
                      ),
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.all(10.0),
                  ),
                new Text(dramanya['nama'], style: new TextStyle(fontSize: 18.0),)
              ],
       ))));
    }
  }

  @override
  void initState() {
    _buatlist();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: new AppBar(
        title : new Text("DRAMA KOREA", style : new TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: daftarDrama,
        ),
    );
  }
}

class Detail extends StatelessWidget {
  Detail({this.nama, this.gambar, this.sinopsis});
  final String nama;
  final String gambar;
  final String sinopsis;

   @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
              height: 240.0,
              child: new Hero(
                tag: nama,
                child: new Material(
                  child: new InkWell(
                    child: new Image.asset(
                      "img/$gambar",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )),
          new BagianNama(
            nama: nama,
          ),
          new Keterangan(
            sinopsis: sinopsis,
          ),
        ],
      ),
    );
  }
}

class BagianNama extends StatelessWidget {
  BagianNama({this.nama});
  final String nama;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  nama,
                  style: new TextStyle(fontSize: 30.0, color: Colors.blueGrey),
                ),               
              ],
            ),
          ),
          new Row(
            children: <Widget>[
              new Icon(
                Icons.star,
                size: 30.0,
                color: Colors.red,
              ),
              new Text(
                "4,9",
                style: new TextStyle(fontSize: 18.0),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Keterangan extends StatelessWidget {
  Keterangan({this.sinopsis});
  final String sinopsis;
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child: new Padding(
          padding: const EdgeInsets.all(10.0),
          child: new Text(
            sinopsis,
            style: new TextStyle(fontSize: 18.0),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}