import 'package:currency_converter/app/controllers/home_controller.dart';
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
}
