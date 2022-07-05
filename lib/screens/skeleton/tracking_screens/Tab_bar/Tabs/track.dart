import 'package:flutter/material.dart';

class TrackTab extends StatefulWidget {
  const TrackTab({Key? key}) : super(key: key);

  @override
  _TrackTabState createState() => _TrackTabState();
}

class _TrackTabState extends State<TrackTab> {
  @override
  Size screenSize() {
    return MediaQuery.of(context).size;
  }


  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: <Widget>[
              //Header Container
              Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    text: 'STATUS: ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    children: const <TextSpan>[
                      TextSpan(text: 'IN FOR APPROVAL', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
                    ],
                  ),
                ),
              ),

              //Body Container
              Expanded(

                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 11,
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Stack(
                                    children: <Widget>[
                                      Container(
                                          margin: EdgeInsets.symmetric(vertical: 11.0),
                                          height: 335,
                                          child: ListView(
                                            children: [
                                              ListTile(
                                                  leading: Icon(Icons.check_circle, color: Colors.green),
                                                  title: Text('Approved By CEO')
                                              ),
                                              ListTile(
                                                  leading: Icon(Icons.check_circle, color: Colors.green),
                                                  title: Text('Approved by Directors')
                                              ),
                                              ListTile(
                                                  leading: Icon(Icons.check_circle, color: Colors.green),
                                                  title: Text('Approved by Head')
                                              ),
                                              ListTile(
                                                  leading: Icon(Icons.check_circle, color: Colors.green),
                                                  title: Text('Sent for Approval')
                                              ),
                                              ListTile(
                                                  leading: Icon(Icons.check_circle, color: Colors.green),
                                                  title: Text('Completed the MOU')
                                              ),
                                            ],
                                          )
                                      )
                                    ]
                                )
                              ]
                          )
                      ),

                      //TextField nearly at bottom
                    ],
                  ),
                ),
              ),

              Container(
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Container(
                                  alignment: Alignment.center,
                                  color: Colors.green,
                                  height: 55,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                    child: Icon(Icons.check, color: Colors.white, size: 30,)
                                      )
                                    ],
                                  )
                                //BoxDecoration
                              ),//Container
                            ), //Flexible
                            SizedBox(
                              width: 10,
                            ), //SizedBox
                            Flexible(
                              flex: 1,
                              fit: FlexFit.loose,
                              child: Container(
                                color: Colors.red,
                                height: 55,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Icon(Icons.cancel, color: Colors.white, size: 30)
                                  ],
                                )

                              //BoxDecoration
                              ), //Container
                            ) //Flexible
                          ], //<Widget>[]
                          mainAxisAlignment: MainAxisAlignment.center,
                        ), //Row
                     //Flexible//Row
                      ], //<Widget>[]
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                    ), //Column
                  ) //Padding
              ),
            ],
          ),

    );
  }
}
