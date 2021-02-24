import 'package:currency_converter/app/controllers/home_controller.dart';
import 'package:currency_converter/app/models/currency_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController from = TextEditingController();
  final TextEditingController result = TextEditingController();
  final homeController = HomeController(
    from: from,
    result: result,
  );

  test('should convert from Brazilian Real to United States Dollar', () {
    from.text = '2.0';

    homeController.convert();

    expect(result.text, '0.36');
  });

  test('should convert from United States Dolar to Brazilian Real', () {
    from.text = '1.0';

    homeController.fromCurrency = CurrencyModel(
      name: 'United States Dollar',
      brazilianReal: 5.43,
      unitedStatesDollar: 1.0,
      euro: 0.82,
      bitcoin: 0.000020,
    );

    homeController.toCurrency = CurrencyModel(
      name: 'Brazilian Real',
      brazilianReal: 1.0,
      unitedStatesDollar: 0.18,
      euro: 0.15,
      bitcoin: 0.0000037,
    );

    homeController.convert();

    expect(result.text, '5.43');
  });
}
