import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        Center(
          child: Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Image.asset(
              'assets/donasi.png',
              width: 80,
              height: 50,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "Donor darah dilokasi terdekat anda",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              height: 80,
              width: 120,
              child: Icon(
                Icons.gps_fixed,
                size: 30,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 50,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              height: 80,
              width: 120,
              child: Icon(
                Icons.map,
                size: 30,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(20),
          ),
          height: 80,
          width: 120,
          child: Icon(
            Icons.phone,
            size: 30,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 150,
        ),
        Text(
          "Bagikan di sosial media!",
          style: TextStyle(color: Colors.redAccent, fontSize: 15),
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed("/login");
          },
          child: Text(
            "Back to Home",
            style: TextStyle(fontSize: 15, color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
