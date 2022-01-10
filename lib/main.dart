import 'package:flutter/material.dart';
import 'package:tap_bar/details.dart';
import 'package:tap_bar/home.dart';
import 'package:tap_bar/services.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(title: Text('TabBar'),
          bottom:TabBar(tabs: [
           Tab(icon: Icon(Icons.person),),
           Tab(icon: Icon(Icons.person),),
           Tab(icon: Icon(Icons.person),),
      
          ],) ,
          ),
          body: HomePage(),
          ),
      ),
    
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBarView(children: [
        Home(),
        Details(),
        Services(),
      ]),
    );
  }
}