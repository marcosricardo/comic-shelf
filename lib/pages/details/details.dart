import 'package:flutter/material.dart';
import '../../models/comic.dart';

class Details extends StatelessWidget {

  final Comic comic;

  Details({Key key, @required this.comic}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return _buildDetails();
  }

  Widget _buildDetails(){
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Card(child: ListTile(title: Text(comic.title))),
          Card(
            child: ListTile(
              title: Text('Data de lançamento'),
              subtitle: Text(
                  comic.releaseDate
              ),
            ),

          ),
          Card(
            child: ListTile(
              title: Text('Marca'),
              subtitle: Text(
                  comic.brand
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Número de página'),
              subtitle: Text(
                  comic.numberOfpages
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Tipo da capa'),
              subtitle: Text(
                  comic.typeOfCover
              ),
            ),
          ),
        ],
      ),

      appBar: _buildAppBar(),
    );
  }

  Widget _buildImageDetails(image){
    return Image.asset(image, height: 300,);
  }

  Widget _buildAppBar(){
    return AppBar(title: Text('Details of comic'));
  }

}