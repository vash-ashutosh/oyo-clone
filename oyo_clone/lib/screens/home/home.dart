import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Fileter(),
    );
  }
}

class Fileter extends StatefulWidget {
  @override
  _FileterState createState() => _FileterState();
}

class _FileterState extends State<Fileter> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        
        children: <Widget>[
          Container(
            height: 50,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) => Card(
                    child: Center(child: Text('Dummy Card Text')),
                  ),
            ),
          ),
          Divider()
        ],
      ),
    );
  }
}

Widget topSec() {
  return ListView(
    // scrollDirection: Axis.horizontal,
    padding: EdgeInsets.all(10),
    children: <Widget>[
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
      Text('data'),
      SizedBox(width: 5),
    ],
  );
}

Widget body() {
  return Container(
      child: ListView.builder(
          itemCount: 100,
          itemBuilder: (c, i) {
            return Padding(
              padding: const EdgeInsets.all(1.0),
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'data',
                ),
              )),
            );
          }));
}

Widget bottomSec() {
  return Container();
}
