import 'package:flutter/material.dart';
import '../../models/comic.dart';
import 'dart:convert';
import '../details/details.dart';

class Home extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }

}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return _buildHome();
  }

  Widget _buildHome(){
    return Scaffold(
      body:  _buildListCard(),
      appBar: _buildAppBar(),
    );
  }

  Widget _buildListCard(){
    //async code with dart
    //https://youtu.be/OTS-ap9_aXc
    //https://dart.dev/codelabs/async-await#what-is-a-future
    return FutureBuilder<String>(
      future: DefaultAssetBundle.of(context).loadString('assets/comics.json'),
      builder: (context, snapshot) {
        List<dynamic> comics = json.decode(snapshot.data.toString());

        return ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            Comic comic = Comic.fromJson(comics[index]);
            return _buildCard(comic);
          },
          itemCount: comics == null ? 0 : comics.length,
        );
      },
    );
  }

  Widget _buildCard(comic){
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => Details(comic: comic)
        ));
      },
      child: SizedBox(
          height: 300,
          child: Card(
            margin: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Stack(
                    children: <Widget>[
                      _buildImageCard(comic.image),
                      _buildGradient(),
                      _buildTextCard(comic.title)
                    ]
                )
              ],
            ),
          )),
    );
  }

  //https://api.flutter.dev/flutter/painting/LinearGradient-class.html
  Widget _buildGradient(){
    return Container(
      height: 268,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
          colors: [
            Colors.transparent,
            Colors.deepPurple.withOpacity(0.7)
          ]
        )
      ),
    );
  }

  Widget _buildTextCard(title){
    return  Positioned(
        bottom:10,
        left:10,
        child:Text(title, style: TextStyle(fontSize: 18, color: Colors.white, decorationStyle: TextDecorationStyle.solid, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),)
    );
  }

  Widget _buildImageCard(image){
    return  Image.asset(
        image, fit: BoxFit.cover, height: 268, width: 400);
  }

  Widget _buildAppBar(){
    return AppBar(title: Text('Comic shelf'));
  }

}