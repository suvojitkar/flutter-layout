//https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTISZvzSa4LFRqPdDrF2JiWrBDagcvCXC1Gsy8anOTfD_ECXw5v&usqp=CAU
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'suvojit Kar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'suvojit Kar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final listElem = Container(
         padding: EdgeInsets.all(2), 
         height: 120, 
         child: Card(
            child: Row( 
               children: <Widget>[ 
                  Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTISZvzSa4LFRqPdDrF2JiWrBDagcvCXC1Gsy8anOTfD_ECXw5v&usqp=CAU",
                  height: 100,
                  width: 100), 
                  Expanded( 
                     child: Container( 
                        padding: EdgeInsets.all(5), 
                        child: Column(    
                           children: <Widget>[ 
                              Text('product1', 
                                  style: TextStyle(
                                  fontWeight: FontWeight.bold
                                 )),
                              Text("Price: RS. 30"), 
                           ], 
                        )
                     )
                  )
               ]
            )
         ));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('suvojit'),
      ),
      body: 
      ListView(
      children:<Widget>[ 
            listElem,
            listElem,
            listElem,
            listElem,
            listElem,
            listElem,
            listElem,
            listElem,
            listElem,
            listElem,
            listElem,
            listElem,
            listElem,
            listElem
      ]
    )




    );
  }
}
