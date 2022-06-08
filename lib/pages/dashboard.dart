import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nandankananappflutter/Notifiers/ListProvider.dart';
import 'package:nandankananappflutter/pages/counter.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (BuildContext context)=>ListProvider(),
        child: MyDashboard(),
      ),
    );
  }
}
class MyDashboard extends StatelessWidget {
  dynamic currentTime = DateTime.now();
  // DateFormat formatter = DateFormat('yyyy-MM-dd');
  DateFormat formatter = DateFormat('hh:mm:ss');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue[900],
        body:Column(
          children:[
            Center(
              heightFactor: 7,
              child: Text(formatter.format(currentTime),
                textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25
               ),
              ),
            ),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                      boxShadow: [new BoxShadow(
                        color: Colors.black,
                        blurRadius: 5.0,
                      ),],
                      borderRadius: BorderRadius.only(topRight: Radius.circular(50),
                          topLeft: Radius.circular(50))
                  ),
                  margin: EdgeInsets.only(bottom: 8),
                  child: Consumer<ListProvider>(
                    builder: (context,listProvider,child){
                      return ListView.builder(
                        itemCount: listProvider.list.length,
                        itemBuilder: (context,index) {
                          return Container(
                            child: ListTile(
                              contentPadding: EdgeInsets.only(top: 10,bottom: 10),
                              title: Text(listProvider.list[index]),
                            ),
                          );
                        },
                        padding: EdgeInsets.only(left: 15,right: 10),
                      );
                    },

                  )
              ),
            ),

          ]
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:() {
            Provider.of<ListProvider>(context,listen:false).addItem("Item1");
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      );
  }
}
