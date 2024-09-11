import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ishaan_portfolio/pages/second_page.dart'; // Import Google Fonts

class first_page extends StatefulWidget {
  const first_page({super.key});

  @override
  State<first_page> createState() => _FirstPageState();
}

class _FirstPageState extends State<first_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30.0,top: 10),
            child: ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => second_page(),));
                },
                child: Text("Get Started" ,style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,

                ),)
            ),
          )
        ],
      ),
      body: Column(
          children: [
            Container(
              height: 1066,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage("assets/background.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 500,left: 220.0),
                    child: Text(
                      "KEEP IT SIMPLE",
                      style: GoogleFonts.bebasNeue(
                        fontSize: 70, // Reduce the font size
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 8,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100,left: 220.0),
                    child: Text(
                      "Ishaan Sensharma",
                      style: GoogleFonts.sourceCodePro(
                        fontSize: 30, // Reduce the font size
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 2,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 220.0),
                    child: Text(
                      "ishaansensharma0@gmail.com",
                      style: GoogleFonts.sourceCodePro(
                        fontSize: 30, // Reduce the font size
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
