import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MoneyResultUI extends StatefulWidget {
  double? money;
  int? person;
  double? tip;
  double? moneyShare;

  MoneyResultUI({
    super.key,
    this.money,
    this.person,
    this.tip,
    this.moneyShare,
  });

  @override
  State<MoneyResultUI> createState() => _MoneyResultUIState();
}

class _MoneyResultUIState extends State<MoneyResultUI> {

  final numberFormat = NumberFormat("#,##0.00");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 197, 249),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'ผลการแชร์เงิน',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Image.asset(
                'assets/images/money.png',
                width: MediaQuery.of(context).size.width * 0.3,
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
                "จำนวนเงิน",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              Text(
                numberFormat.format(widget.money),
                //widget.money!.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              Text(
                "บาท",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
                "จำนวนคนที่หาร",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              Text(
                widget.person!.toString(),
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              Text(
                "คน",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
                "จำนวนเงินทิป",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              Text(
                numberFormat.format(widget.tip),
                //widget.tip!.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              Text(
                "บาท",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
                "สรุปว่าหารคนละเท่าไหร่",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              Text(
                numberFormat.format(widget.moneyShare),
                //widget.moneyShare!.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.yellow,
                  color: const Color.fromARGB(255, 176, 39, 39),
                ),
              ),
              Text(
                "บาท",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
