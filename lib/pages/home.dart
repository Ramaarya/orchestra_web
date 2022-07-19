import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Diponegoro Orchestra',
          style: GoogleFonts.poppins(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return const AlertDialog(
                        content: Text('Dalam Proses'),
                      );
                    });
              },
              child: InkWell(
                focusColor: Colors.white,
                child: Container(
                  child: Row(
                    children: const [
                      Icon(Icons.email_rounded),
                      SizedBox(width: 10),
                      Text('Contact'),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
