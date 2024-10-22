import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class CurrencyConverterMaterialpage extends StatefulWidget {
  const CurrencyConverterMaterialpage({super.key});
  @override
  State<CurrencyConverterMaterialpage> createState() =>
      _CurrencyConverterMaterialpageState();
}
class _CurrencyConverterMaterialpageState
    extends State<CurrencyConverterMaterialpage> {double result = 0;
  final TextEditingController _firsttextEController = TextEditingController();
  final TextEditingController _secondtextEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.all(Radius.circular(5)));
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: const Text('Currency Converter'),
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "INR ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}",
                    style: const TextStyle(
                        fontSize: 45, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _firsttextEController,
              keyboardType: const TextInputType.numberWithOptions(
                  decimal: true, signed: true),
              style: const TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                  labelText: 'Enter name',
                  hintText: 'name',
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.blue,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _secondtextEController,
              keyboardType: const TextInputType.numberWithOptions(
                  decimal: true, signed: true),
              style: const TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                  labelText: 'Enter name',
                  hintText: 'name',
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.blue,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(_firsttextEController.text) *
                        double.parse(_secondtextEController.text);
                  });
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    fixedSize: const Size(double.infinity, 50),
                    shape: (RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)))),
                child: const Text('Convert')),
          ),
          ElevatedButton.icon(
              onPressed: _onTapButton, label: const Icon(Icons.add))
        ]));
  }

  void _onTapButton() {
    setState(() {
      result = double.parse(_firsttextEController.text) +
          double.parse(_secondtextEController.text);
    });
  }
}
