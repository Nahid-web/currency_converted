import 'package:flutter/cupertino.dart';

// create a variable to shore amount
// a function for conversion usd to bd
// store converssed result to varible
// display result

class HomePageCupertinoApp extends StatefulWidget {
  const HomePageCupertinoApp({super.key});

  @override
  State<HomePageCupertinoApp> createState() => _HomePageCupertinoAppState();
}

class _HomePageCupertinoAppState extends State<HomePageCupertinoApp> {
  double result = 0;
  TextEditingController usdInputController = TextEditingController();

  convertBd() {
    setState(() {
      result = double.parse(usdInputController.text) * 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey,
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Currency Converter'),
        backgroundColor: CupertinoColors.systemGrey,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'BDT - ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: CupertinoColors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CupertinoTextField(
              controller: usdInputController,
              keyboardType: TextInputType.number,
              placeholder: 'Please enter amount of usd',
              // placeholderStyle: TextStyle(color: CupertinoColors.systemGrey3),
              prefix: Icon(CupertinoIcons.money_dollar_circle),
              decoration: BoxDecoration(
                color: CupertinoColors.white,
                border: Border.all(),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CupertinoButton(
              onPressed: convertBd,
              color: CupertinoColors.black,
              child: const Text(
                'Convert',
                style: TextStyle(color: CupertinoColors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
