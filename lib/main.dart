import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    //TopItems Widgets

    Widget ScanIcon = InkWell(
      splashColor: Colors.white,
      onTap: (){
        print('Arthur');
      },
        child:Column(
          children: <Widget>[
            Icon(Icons.graphic_eq, color: Colors.white,),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Text('Scan', style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
    );


    Widget PayIcon = Column(
      children: <Widget>[
        Icon(Icons.account_balance_wallet, color: Colors.white,),
        Container(
          padding: const EdgeInsets.only(top: 10),
          child: Text('Pay', style: TextStyle(color: Colors.white),),
        ),
      ],
    );


    Widget GetPaidIcon = Column(
      children: <Widget>[
        Icon(Icons.arrow_downward, color: Colors.white,),
        Container(
          padding: const EdgeInsets.only(top: 10),
          child: Text('Get Paid', style: TextStyle(color: Colors.white),),
        ),
      ],
    );

    Widget YourPoints = Column(
      children: <Widget>[
        Icon(Icons.plus_one, color: Colors.white,),
        Container(
          padding: const EdgeInsets.only(top: 10),
          child: Text('Points', style: TextStyle(color: Colors.white),),
        ),
      ],
    );



    Widget TopItems = Container(
      color: Colors.black54,
      padding: const EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ScanIcon,
                  ],
                ),
              ),
             flex: 0,
            ),

          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  PayIcon,
                ],
              ),
          ),
            flex: 0,
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GetPaidIcon,
              ],
            ),
          ),
            flex: 0,
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                YourPoints
              ],
            ),
          ),
            flex: 0,
          ),

          ]
          ),
      );


// Convenient Life Widgets






    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PayOES',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pay-Oes'),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.help),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.person),
            )
          ],
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              TopItems,
            ],
          ),
        )

      ),
        );
  }

}