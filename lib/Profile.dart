import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: AppBar(
        title: Text("Tentang Aplikasi")
      ),
      body: Center(
        child: Container(
        width: ScreenUtil.getInstance().setHeight(800),
        height: ScreenUtil.getInstance().setHeight(600),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 15.0),
                blurRadius: 15.0),
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, -10.0),
                blurRadius: 10.0),
          ]),
        child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            
            Text("DRAMA LIST",
                style: TextStyle(
                    fontSize: ScreenUtil.getInstance().setSp(100),
                    fontFamily: "Product-Bold",
                    letterSpacing: .6)),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(80),
            ),
            Text("Aplikasi yang memuat informasi berupa sinopsis dan rating dari drama korea. Aplikasi ini dibuat untuk memenuhi tugas UTP mobile lanjut.",
                style: TextStyle(
                    fontFamily: "Product-Regular",
                    color: Colors.grey,
                    fontSize: ScreenUtil.getInstance().setSp(30))),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(50),
            ),
            Text("Oktaviana - 1717051007",
                style: TextStyle(
                    fontFamily: "Product-Regular",
                    color: Colors.grey,
                    fontSize: ScreenUtil.getInstance().setSp(30))),
          ],
         ),  
        ),  
      ),
      ),
    );
  }
}
