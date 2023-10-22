import 'package:flutter/material.dart';

// create a variable to shore amount
// a function for conversion usd to bd
// store converssed result to varible
// display result

class HomePageMaterialApp extends StatefulWidget{
  const HomePageMaterialApp({super.key});
 @override
  State<HomePageMaterialApp> createState() {
    return _HomePageMaterialAppState();
  }

}

class _HomePageMaterialAppState extends State<HomePageMaterialApp>{
  double result = 0;
  TextEditingController usdInputController = TextEditingController();

  convertBd(){
    setState(() {
      result = double.parse(usdInputController.text) * 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(
        color: Colors.black,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('Currency Converter'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'BDT - ${result != 0? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10,),
            TextField(
              controller: usdInputController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon:const  Icon(Icons.monetization_on_outlined),
                prefixIconColor: Colors.black,
                hintText: 'Please enter the amount of usd',
                fillColor: Colors.white70,
                filled: true,
                focusedBorder: border,
                enabledBorder: border,
              ),
            ),
            const SizedBox(height: 10,),
            TextButton(
              onPressed: convertBd,
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                minimumSize:const  Size(double.infinity, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),

              child: const Text('Convert'),
            )
          ],
        ),
      ),
    );
  }
}

