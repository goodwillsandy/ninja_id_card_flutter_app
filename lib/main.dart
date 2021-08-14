import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('ID Card'),
        backgroundColor: Colors.blue,
        elevation: 0.0,
        centerTitle: true,
      ),
    floatingActionButton: FloatingActionButton(
      onPressed: ()=>{setState(()=>ninjaLevel += 1)},
      child: Icon(Icons.add)
    ),
    body: Padding(
      padding: EdgeInsets.symmetric(vertical:20.0, horizontal:30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 50.0,
            ),
          ),
          Divider(
            height: 90.0,
            color: Colors.grey[800],
          ),
          Text(
            'NAME :',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            ),
          ),
          SizedBox(height:10.0),
          Text(
            'Sandeep Kumar',
            style: TextStyle(
              color: Colors.black54,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30.0),
          Text(
            'Current Ninja Level',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            '$ninjaLevel',
            style: TextStyle(
              color: Colors.black54,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30.0),
          Row(
            children: <Widget>[
              Icon(
                Icons.email,
                color: Colors.grey[400],
              ),
              SizedBox(width: 10.0,),
              Text(
                'iamsandeepkumar@hotmail.com',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                  letterSpacing: 1.0
                ),
              )
            ],
          )
        ],
      ),
    ),
    );
  }
}


