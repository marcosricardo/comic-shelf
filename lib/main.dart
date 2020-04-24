import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Comic shelf',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        body: SizedBox(
            height: 300,
            child: Card(
              margin: EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  Stack(
                   children: <Widget>[
                     Image.network(
                       'https://lh3.googleusercontent.com/proxy/zzKE5IskSx74i62UqPZQX2-Gv0X2gGUwvJT6SOPTFnL3mT4f79C_uD3G4CqyvzKKmVglTAbtdPJEBnVjffJCJh1Ihu72GNdBkSeulouESv_XxzTYy1W_opK2ubpfv_wTNFLn6RE1gSeHLU4E639TFuoA-UM', fit: BoxFit.cover, height: 268, width: 400,),
                     Positioned(
                         bottom:10,
                         left:10,
                         child:Text('IRON MAN', style: TextStyle(fontSize: 25, color: Colors.white, decorationStyle: TextDecorationStyle.solid, fontWeight: FontWeight.bold),)
                     )
                    ]
                  )
                ],
              ),
        )),
        appBar: AppBar(title: Text('Comic shelf')),
      ),
    );
  }
}
