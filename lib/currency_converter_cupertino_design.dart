import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoState();
}

class _CurrencyConverterCupertinoState
    extends State<CurrencyConverterCupertinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  void convert() {
    result = double.parse(textEditingController.text) * 122.12;
    setState(() {});
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor:CupertinoColors.systemGrey3,
        middle: Text(
          "Currency Converter",
          style: TextStyle(color: CupertinoColors.white),
        ),
      ),
      backgroundColor: CupertinoColors.systemGrey3,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                result.toStringAsFixed(2),
                style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: CupertinoColors.systemGrey3,
                ),
              ),
              CupertinoTextField(
                controller: textEditingController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                style: TextStyle(color: CupertinoColors.black),
                placeholder: 'Please enter the amount in usd',
                prefix: Icon(CupertinoIcons.money_dollar),
                decoration:BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                  color: CupertinoColors.white
                ), 
              ),
              const SizedBox(height: 10),
              CupertinoButton(
                onPressed: convert,
                color: CupertinoColors.black,            
                child: Text('Convert'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
