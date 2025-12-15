
import 'package:currency_converter/currency_converter.dart';
import 'package:currency_converter/currency_converter_cupertino_design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyCupertinoApp());
}


//stateless widget
//statefull widget
//inherited widget




class MyApp extends StatelessWidget{
  const MyApp({super.key});
 @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: CurrencyConverterMaterialPage()
    );

    
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CurrencyConverterCupertinoPage(),
    );
  }
}