import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

int clickCounter =0;
String text1 = 'Clicks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('CounterScreen')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: TextStyle(fontSize: 120, fontWeight: FontWeight.w100),),
             Text(text1.toString(), style: TextStyle(fontSize: 40),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            this.clickCounter += 1;

            if (this.clickCounter == 1) {
              text1 = 'Click';
            }
            else{
              text1 = 'Clicks';
            }
          });
        },
        child: Icon(Icons.plus_one),
        ),
    );
  }
}