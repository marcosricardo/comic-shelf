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
        body:
        ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Image.network('https://hqrock.files.wordpress.com/2012/02/iron-man-128-demon-in-a-bottle.jpg'),
                        ),
                      ),

                      Expanded(
                          child: Text("Demon in a Bottle is a nine-issue story arc from the comic book series The Invincible Iron Man (vol. 1), published in issues 120 through 128 in 1979 by Marvel Comics. It was written by David Michelinie and Bob Layton and illustrated by John Romita, Jr., Bob Layton, and Carmine Infantino...", overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontWeight: FontWeight.bold), maxLines:10)
                      ),

                    ],
                  )
                ),
              ),
            ),
          ],
        ),
        appBar: AppBar(title: Text('Comic shelf')),
      ),
    );
  }
}
