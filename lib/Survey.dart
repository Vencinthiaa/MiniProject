import 'package:donor_darah/Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Survey extends StatefulWidget {
  const Survey({super.key});

  @override
  State<Survey> createState() => _SurveyState();
}

class _SurveyState extends State<Survey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 110.0),
          child: Center(
            child: Container(
              child: Icon(
                Icons.bloodtype,
                size: 150,
                color: Colors.redAccent,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "Silahkan pilih golongan\n            darah anda",
          style: TextStyle(fontSize: 25),
        ),
        SizedBox(
          height: 30,
        ),
        bloodTypeRow("A", "B"),
        SizedBox(
          height: 20,
        ),
        bloodTypeRow("O", "AB"),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            SizedBox(
              width: 50,
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "-",
                    style: TextStyle(fontSize: 20),
                  )),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 50,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/booking");
            },
            child: Text(
              "Booking Now",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}

Widget bloodTypeRow(String type1, String type2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        decoration: BoxDecoration(
            color: Colors.grey[350], borderRadius: BorderRadius.circular(20)),
        width: 120,
        height: 70,
        child: TextButton(
            onPressed: () {},
            child: Text(
              type1,
              style: TextStyle(fontSize: 20),
            )),
      ),
      SizedBox(
        width: 20,
      ),
      Container(
        decoration: BoxDecoration(
            color: Colors.grey[350], borderRadius: BorderRadius.circular(20)),
        width: 120,
        height: 70,
        child: TextButton(
            onPressed: () {},
            child: Text(
              type2,
              style: TextStyle(fontSize: 20),
            )),
      ),
    ],
  );
}
