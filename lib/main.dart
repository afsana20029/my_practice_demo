import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_practice/currency_converter_cupertino_page.dart';
import 'package:my_practice/currency_converter_materialpage.dart';

void main(){
  runApp( const MyCupertinoApp());
}
// class MyApp extends StatelessWidget {
//    const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return  const MaterialApp(
//       home:CurrencyConverterMaterialpage() ,
//     );
//   }
// }
class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyConverterCupertinoPage(),
    );
  }
}