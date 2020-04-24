import 'package:flutter/material.dart';
import '../../models/comic.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return _buildHome();
  }

  Widget _buildHome(){
    return Scaffold(
      body:  _buildCard(),
      appBar: _buildAppBar(),
    );
  }
  
  Widget _buildCard(){
    return SizedBox(
        height: 300,
        child: Card(
          margin: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Stack(
                  children: <Widget>[
                    _buildImageCard(),
                    _buildTextCard()
                  ]
              )
            ],
          ),
        ));
  }

  Widget _buildTextCard(){
    return  Positioned(
        bottom:10,
        left:10,
        child:Text('IRON MAN', style: TextStyle(fontSize: 25, color: Colors.white, decorationStyle: TextDecorationStyle.solid, fontWeight: FontWeight.bold),)
    );
  }

  Widget _buildImageCard(){
    return  Image.network(
        'https://lh3.googleusercontent.com/proxy/zzKE5IskSx74i62UqPZQX2-Gv0X2gGUwvJT6SOPTFnL3mT4f79C_uD3G4CqyvzKKmVglTAbtdPJEBnVjffJCJh1Ihu72GNdBkSeulouESv_XxzTYy1W_opK2ubpfv_wTNFLn6RE1gSeHLU4E639TFuoA-UM', fit: BoxFit.cover, height: 268, width: 400);
  }

  Widget _buildAppBar(){
    return AppBar(title: Text('Comic shelf'));
  }

}