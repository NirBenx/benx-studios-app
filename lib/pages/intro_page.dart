import 'package:flutter/material.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(23.0),
              child: Image.asset('lib/images/benxstudios_lowercase-removebg-preview.png',
              color: Colors.grey[800],
              height: 260,
              width: 560,
              scale: 0.1,
              ),
            ),
            const SizedBox(height: 1),
            Text("STUDIOS LOCATED IN TEL AVIV, MILANO AND PARIS.", 
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold,
            fontFamily: 'Sora',
            color: Colors.grey.shade700),
            ),
            const SizedBox(height: 25,),
            Text("Brand new clothes made with premium quality. Our high-end studios offers everything from casual basics to luxurious statement pieces. If youre looking for an elegant yet bold look, this is your go-to spot for quality pieces that will stand out.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey.shade600,
            fontFamily: 'Sora'),),
            const SizedBox(height: 167),

            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),
              ),
              ),
            child: Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(12)
              ),
              padding: const EdgeInsets.all(28),
              child: const Center(
                child: Text("Shop Now",
                style: TextStyle(color: Colors.white, fontFamily: 'Sora'),),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}