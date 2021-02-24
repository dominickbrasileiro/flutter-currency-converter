import 'package:currency_converter/app/components/currency_box.dart';
import 'package:currency_converter/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController fromText = TextEditingController();
  final TextEditingController resultText = TextEditingController();

  HomeController homeController;

  @override
  void initState() {
    homeController = HomeController(from: fromText, result: resultText);
    super.initState();
  }

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
                CurrencyBox(
                  controller: fromText,
                  currencies: homeController.currencies,
                  onChanged: (currency) {
                    setState(() {
                      homeController.fromCurrency = currency;
                    });
                  },
                  selectedCurrency: homeController.fromCurrency,
                ),
                SizedBox(height: 10),
                CurrencyBox(
                  controller: resultText,
                  currencies: homeController.currencies,
                  onChanged: (currency) {
                    setState(() {
                      homeController.toCurrency = currency;
                    });
                  },
                  selectedCurrency: homeController.toCurrency,
                ),
                SizedBox(height: 50),
                RaisedButton(
                  color: Colors.amber,
                  child: Text('Convert'),
                  onPressed: () {
                    homeController.convert();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
