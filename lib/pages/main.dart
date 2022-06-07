import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nandankananappflutter/pages/loginpage.dart';
import 'package:provider/provider.dart';
import 'counter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterViewModel>(
      create: (BuildContext context) =>  CounterViewModel(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Nandankanan'),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => LoginPage())));

    return Scaffold(
      // appBar: AppBar(
      //   title: Text(this.title!),
      //
      // ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/nandankanan_splash.png',
              width: MediaQuery.of(context).size.width,
              height:450,
              fit: BoxFit.cover,
            ),
            // Consumer<CounterViewModel>(builder: (context, viewModel, child) {
            //   return Text(
            //     '${viewModel.counter}',
            //     style: Theme.of(context).textTheme.headline4,
            //   );
            // }),

          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: Provider.of<CounterViewModel>(context,listen: false).incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),

    );
  }
}

