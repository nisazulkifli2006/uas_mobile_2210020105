import 'package:flutter/material.dart';

// ignore: camel_case_types
class hitungLingkaran extends StatefulWidget {
  static const routeName = "/hitungLingkaran";

  const hitungLingkaran({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _hitungLingkaranPageState createState() => _hitungLingkaranPageState();
}

// ignore: camel_case_types
class _hitungLingkaranPageState extends State<hitungLingkaran> {
  TextEditingController jariInput = TextEditingController();
  String result = "0";
  String jari = "0";
  double pii = 3.14;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: const Text(
          'Hitung Luas Lingkaran',
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            SizedBox(
              width: 350,
              child: TextField(
                keyboardType: TextInputType.number,
                controller: jariInput,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Input jari-jari',
                  hintText: '0',
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
                'Luas Lingkaran = 3.14 x $jari x $jari\nLuas Lingkaran = $result',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: 250,
              child: TextButton(
                onPressed: () {
                  setState(
                    () {
                      if (jariInput.text == "") {
                        //jari = '0';
                        //result = '0';
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Inputan Anda Salah')));
                      } else {
                        double sum = int.parse(jariInput.text) *
                            int.parse(jariInput.text) *
                            pii;
                        jari = jariInput.text;
                        result = sum.toString();
                      }
                    },
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 100, 98, 100)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                child: const Text('Luas Lingkaran'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
