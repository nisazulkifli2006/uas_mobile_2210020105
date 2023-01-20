import 'package:flutter/material.dart';

// ignore: camel_case_types
class profileDev extends StatefulWidget {
  static const routeName = "/profileDev";

  const profileDev({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _profileDevPageState createState() => _profileDevPageState();
}

// ignore: camel_case_types
class _profileDevPageState extends State<profileDev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 238, 239),
      appBar: AppBar(
        title: const Text(
          'Profil Developer',
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const SizedBox(
              width: 350,
              child: CircleAvatar(
                radius: 130,
                backgroundColor: Color.fromARGB(255, 117, 122, 127),
                child: CircleAvatar(
                  radius: 120,
                  backgroundImage: NetworkImage(
                    'https://cdn2.sharechat.com/img_513024_2a237aa4_1672238103572_sc.jpg',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text('ANISAH',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            const SizedBox(height: 10),
            const Text('2210020105',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            const SizedBox(height: 20),
            const SizedBox(height: 10),
            const Text('UAS PEMROGRAMAN MOBILE',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            const SizedBox(height: 20),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(Icons.whatsapp,
                      size: 50, color: Color.fromARGB(255, 239, 242, 244)),
                  Icon(Icons.telegram,
                      size: 50, color: Color.fromARGB(255, 243, 245, 247)),
                ]),
            const SizedBox(height: 20),
            const SizedBox(
              width: 350,
              //child: ,
            ),
          ],
        ),
      ),
    );
  }
}
