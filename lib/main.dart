import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: [
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    'Oeschinen Lake Campground',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text(
                  'Kandersteg, Switzerland',
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          new Text('41'),
        ],
      ),
    );

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;

      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Icon(icon, color: color),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.。。
        ''',
        softWrap: true,
        style: TextStyle(color: Colors.red),
      ),
    );

    var descTextStyle = new TextStyle(
        color: Colors.red, fontSize: 20, fontStyle: FontStyle.italic);

    Widget leftColum = new ListView(
      children: [
        new Image.asset(
          'images/lake.png',
          width: 600.0,
          height: 240.0,
          fit: BoxFit.cover,
        ),
        titleSection,
        buttonSection,
        textSection,
        new Row(
          children: <Widget>[
            new Center(
              child: new Text(
                'data',
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 30,
                    textBaseline: TextBaseline.alphabetic),
              ),
            ),
            new Image.asset('images/lake.png', fit: BoxFit.cover),
            new Icon(Icons.network_wifi, color: Colors.red)
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
        new Row(
          children: <Widget>[
            new Expanded(
              child: new Image.asset(
                'images/lake.png',
                fit: BoxFit.cover,
              ),
              flex: 1,
            ),
            new Expanded(
              child: new Image.asset(
                'images/lake.png',
                fit: BoxFit.cover,
              ),
              flex: 1,
            ),
            new Expanded(
              child: new Image.asset(
                'images/lake.png',
                fit: BoxFit.cover,
              ),
              flex: 1,
            ),
          ],
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
        ),
        new Image.asset(
          'images/lake.png',
          width: 5000,
          height: 200,
          fit: BoxFit.fill,
        ),
        new Container(
          padding: new EdgeInsets.all(20),
          child: new Row(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                ],
              ),
              new Text(
                '170评价',
                textAlign: TextAlign.center,
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
        ),
        new DefaultTextStyle(
          style: descTextStyle,
          child: new Container(
            padding: new EdgeInsets.all(20.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    new Icon(Icons.kitchen),
                    new Text("PREP:"),
                    new Text("25 min")
                  ],
                ),
                new Column(
                  children: <Widget>[
                    new Icon(Icons.timer),
                    new Text("COOK:"),
                    new Text("1 hr")
                  ],
                ),
                new Column(
                  children: <Widget>[
                    new Icon(Icons.restaurant),
                    new Text("FEEDS:"),
                    new Text("4-6")
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );

    Widget card = new Card(
        child: new Column(
      children: <Widget>[
        new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            new Container(
              width: 100,
              color: Colors.green,
              child: new Text("data"),
            ),
            new Image.asset(
              'images/lake.png',
              fit: BoxFit.cover,
            )
          ],
        ),
        new Container(
            color: Colors.black26,
            child: new Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Container(
                        decoration: new BoxDecoration(
                            border: new Border.all(
                                width: 10.0, color: Colors.black38),
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(8.0))),
                        child: new Image.asset('images/lake.png'),
                        margin: const EdgeInsets.all(4.0),
                      ),
                    ),
                    new Expanded(
                      child: new Container(
                        decoration: new BoxDecoration(
                            border: new Border.all(
                                width: 10.0, color: Colors.black38),
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(8.0))),
                        child: new Image.asset('images/lake.png'),
                        margin: const EdgeInsets.all(4.0),
                      ),
                    ),
                  ],
                ),
                new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Container(
                        decoration: new BoxDecoration(
                            border: new Border.all(
                                width: 10.0, color: Colors.black38),
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(8.0))),
                        child: new Image.asset('images/lake.png'),
                        margin: const EdgeInsets.all(4.0),
                      ),
                    ),
                    new Expanded(
                      child: new Container(
                        decoration: new BoxDecoration(
                            border: new Border.all(
                                width: 10.0, color: Colors.black38),
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(8.0))),
                        child: new Image.asset('images/lake.png'),
                        margin: const EdgeInsets.all(4.0),
                      ),
                    ),
                  ],
                ),
              ],
            )),
        // new Container(
        //   height: 500,
        //   width: 300,
        //   child: new GridView.extent(
        //     maxCrossAxisExtent: 150.0,
        //     padding: new EdgeInsets.all(10.0),
        //     mainAxisSpacing: 5.0,
        //     crossAxisSpacing: 5.0,
        //     children: <Widget>[
        //       // new Image.asset('images/lake.png'),
        //       // new Image.asset('images/lake.png'),
        //       // new Image.asset('images/lake.png'),
        //       // new Image.asset('images/lake.png'),
        //     ],
        //   ),
        // )
      ],
    ));

    List<Widget> list = <Widget>[
      new ListTile(
        title: new Text('1'),
        leading: new Icon(
          Icons.school,
          color: Colors.green,
        ),
        subtitle: new Text('description'),
      ),
      new ListTile(
        title: new Text('2'),
        leading: new Icon(
          Icons.school,
          color: Colors.blue,
        ),
        subtitle: new Text('description'),
      ),
      new ListTile(
        title: new Text('3'),
        leading: new Icon(Icons.school),
        subtitle: new Text('description'),
      ),
      new ListTile(
          title: new Text('4'),
          leading: new Icon(Icons.school),
          subtitle: new Text('description'),
          onTap: () {})
    ];

    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: new AppBar(
            title: Text('Flutter layout Demo'),
          ),
          body: new Container(
              //     child: new ListView(
              //   children: list,
              // )
              child: new Stack(
            alignment: Alignment(0.6, 0.6),
            children: <Widget>[
              new CircleAvatar(
                backgroundImage: new AssetImage('images/lake.png'),
                radius: 160.0,
              ),
              new Text('data')
            ],
          ))),
    );
  }
}
