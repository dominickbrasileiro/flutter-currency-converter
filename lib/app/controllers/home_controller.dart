import 'package:currency_converter/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class HomeController {
  List<CurrencyModel> currencies;

  final TextEditingController from;
  final TextEditingController result;

  CurrencyModel fromCurrency;
  CurrencyModel toCurrency;

  HomeController({this.from, this.result}) {
    currencies = CurrencyModel.getCurrencies();
    fromCurrency = currencies[0];
    toCurrency = currencies[1];
  }

  void convert() {
    String text = from.text;

    double value = double.tryParse(text) ?? 1;

    double returnValue = 0;

    Map toCurrencyValue = {
      'Brazilian Real': fromCurrency.brazilianReal,
      'United States Dollar': fromCurrency.unitedStatesDollar,
      'Euro': fromCurrency.euro,
      'Bitcoin': fromCurrency.bitcoin,
    };

    returnValue = value * toCurrencyValue[toCurrency.name];

    result.text = returnValue.toStringAsFixed(2);
  }
}
