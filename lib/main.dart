import 'package:flutter/material.dart';
import 'menu.dart';
import 'persegi.dart';
import 'lingkaran.dart';
import 'profil.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: new ThemeData(scaffoldBackgroundColor: Colors.amber),
      title: "UAS",
      initialRoute: "/",
      routes: {
        "/": (context) => const menuAwal(),
        hitungPersegi.routeName: (context) => const hitungPersegi(),
        hitungLingkaran.routeName: (context) => const hitungLingkaran(),
        profileDev.routeName: (context) => const profileDev(),
        //Lupa.routeName: (context) => Lupa(),
        //Daftar.routeName: (context) => Daftar(),
        //barang_view.routeName: (context) => barang_view(),
      },
    ),
  );
}
