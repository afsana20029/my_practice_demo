import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
  double result = 0;
  final TextEditingController _firsttextEController = TextEditingController();
  final TextEditingController _secondtextEController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemGrey,
        navigationBar: const CupertinoNavigationBar(
          backgroundColor: CupertinoColors.systemGrey,
          middle: Text('Currency Converter'),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
            child:CupertinoTextField(
              controller: _firsttextEController,
              keyboardType: const TextInputType.numberWithOptions(
                  decimal: true, signed: true),
              style: const TextStyle(
                color: CupertinoColors.black,
              ),
              placeholder: 'Please enter the amount of USD',
              prefix: const Icon(CupertinoIcons.money_dollar),
              decoration:BoxDecoration(
    color: CupertinoColors.white,
    border: Border.all(),
    borderRadius: BorderRadius.circular(5)
    )
            ),
          ),
          const SizedBox(height: 10,),
          CupertinoButton(
            color: CupertinoColors.black,
              onPressed: () {
                setState(() {
                  result = double.parse(_firsttextEController.text) *81;
                });
              },
              child: const Text('Convert',style:TextStyle(color: CupertinoColors.white))),

        ]));
  }

}
