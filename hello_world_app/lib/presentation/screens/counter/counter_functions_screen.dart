import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Counter Screen')),
        leading: Icon(Icons.verified_user),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.menu))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: TextStyle(fontSize: 120, fontWeight: FontWeight.w100),),
            Text('Click${clickCounter == 1 ? '': 's'}', style: TextStyle(fontSize: 40),)
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(icon: Icons.refresh_outlined),
          SizedBox(height: 10,),
          CustomButton(icon: Icons.add),
          SizedBox(height: 10,),
          CustomButton(icon: Icons.remove,)
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  const CustomButton({
    super.key, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: 
    (){
      
    },
    child: Icon(icon),
    );
  }
}