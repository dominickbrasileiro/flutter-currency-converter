import 'package:currency_converter/app/components/currency_box.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 100,
              right: 30,
              bottom: 20,
              left: 30,
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 150,
                  height: 150,
                ),
                SizedBox(height: 50),
                CurrencyBox(),
                SizedBox(height: 10),
                CurrencyBox(),
                SizedBox(height: 50),
                RaisedButton(
                  color: Colors.amber,
                  child: Text('Convert'),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
