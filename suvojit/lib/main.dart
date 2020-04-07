//https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTISZvzSa4LFRqPdDrF2JiWrBDagcvCXC1Gsy8anOTfD_ECXw5v&usqp=CAU
import 'package:flutter/material.dart';
import 'package:suvojit/service.dart';
import 'package:suvojit/productModel.dart';
import 'dart:convert';

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
  var showList = false;
  var productresp = new List<ProductModel>();
  final drawesection = ListView(
    children: <Widget>[
      DrawerHeader(
        child: Text('Drawer Header'),
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
      ),
      ListTile(
        title: Text('option 1'),
      ),
      ListTile(
        title: Text('option 2'),
      ),
      ListTile(
        title: Text('option 3'),
      )
    ],
  );


  @override
  void initState(){
    super.initState();
    getProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('suvojit'),
      ),
      body: !showList ?
      Center(
        child: Text('Loading....'),
      ) :
      ListView.builder(
          itemCount: productresp.length,
          itemBuilder: (BuildContext context, int index){
            return Container(
                padding: EdgeInsets.all(2),
                height: 120,
                child: Card(
                    child: Row(
                        children: <Widget>[
                            FadeInImage.assetNetwork(
                                placeholder: 'assets/images/preloader.gif',
                                height: 100,
                                width: 100,
                                image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTISZvzSa4LFRqPdDrF2JiWrBDagcvCXC1Gsy8anOTfD_ECXw5v&usqp=CAU"),
                          Expanded(
                              child: Container(
                                  padding: EdgeInsets.all(5),
                                  child: Column(
                                    children: <Widget>[
                                      Text(productresp[index].categoryName,
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
                )
            );
          }
      ),
      drawer: Drawer(
        child: drawesection
      ),
  );
 }

  getProduct() {
    Service.getProduct().then((response){
      setState(() {
      Iterable list = json.decode(response.body);
      productresp = list.map((model) => ProductModel.fromJson(model)).toList();
      showList = true;
      });
    });
  }
}
