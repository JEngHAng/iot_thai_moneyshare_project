// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MoneyInputUI extends StatefulWidget {
  const MoneyInputUI({super.key});

  @override
  State<MoneyInputUI> createState() => _MoneyInputUIState();
}

class _MoneyInputUIState extends State<MoneyInputUI> {
  bool isTip = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 55, 110, 57),
        title: Text(
          "แฃร์เงินกัน",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Image.asset(
                'assets/images/money.png',
                width: MediaQuery.of(context).size.width * 0.35,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                  ),
                  prefixIcon: Icon(
                    FontAwesomeIcons.moneyBill1Wave,
                    color: Colors.greenAccent,
                  ),
                  hintText: "ป้อนจำนวนเงิน (บาท)",
                  hintStyle: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.greenAccent,
                  ),
                  hintText: "ป้อนจำนวนคน (คน)",
                  hintStyle: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    onChanged: (paramValue) {
                      setState(() {
                        isTip = paramValue!;
                      });

                    },
                    value: isTip,
                    activeColor: Colors.green,
                    checkColor: Colors.white,
                    side: BorderSide(
                      color: Colors.green,
                    ),

                  ),
                  Text(
                    "ทิปให้พนักงานเสริฟ",
                  ),
                ],
              ),
              SizedBox(
                height: 25.0,
              ),
              TextField(
                enabled: isTip,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                  ),
                  prefixIcon: Icon(
                    FontAwesomeIcons.coins,
                    color: Colors.greenAccent,
                  ),
                  hintText: "ป้อนจำนวนเงินทิป (บาท)",
                  hintStyle: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "คำนวณ",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style:  ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  fixedSize: Size(
                    MediaQuery.of(context).size.width,
                    50.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)
                  )
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.cancel_outlined,
                  color: Colors.white,
                ),
                label: Text(
                  "ยกเลิก",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                 style:  ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  fixedSize: Size(
                    MediaQuery.of(context).size.width,
                    50.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)
                  )
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
              Text(
                "Create by Saranchai",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
        ),
      );
  }
}