import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Profile",
      home: _MyProfilePage(),
    );
  }
}

class _MyProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<_MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "Profile",
            style: TextStyle(color: Colors.white),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Column(
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                    color: Colors.deepOrangeAccent),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    "Familiar",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                                Text(
                                  "12",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Container(
                                    child: Image.asset(
                                  "images/bb.jpg",
                                  fit: BoxFit.cover,
                                  width: 100,
                                  height: 80,
                                )),
                                Text(
                                  "ID : 123",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    "Following",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                                Text(
                                  "18",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Center(
                                  child: Text("My Sunflower".toUpperCase(), style: TextStyle(
                                    fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold
                                  ),),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Icon(Icons.group_add, color: Colors.white,),
                                ),
                                Text("Friends", style: TextStyle(
                                  fontSize: 14, color: Colors.white
                                ),)
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Icon(Icons.group, color: Colors.white,),
                                ),
                                Text("Groups", style: TextStyle(
                                  fontSize: 14, color: Colors.white
                                ),)
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Icon(Icons.videocam, color: Colors.white,),
                                ),
                                Text("Videos", style: TextStyle(
                                    fontSize: 14, color: Colors.white
                                ),)
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Icon(Icons.favorite, color: Colors.white,),
                                ),
                                Text("Likes", style: TextStyle(
                                    fontSize: 14, color: Colors.white
                                ),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer()
                  ],
                )
            ),
            Container(
              height: MediaQuery.of(context).size.height/2.7,
              padding: EdgeInsets.all(16),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Icon(Icons.dashboard, color: Colors.grey,),
                              ),
                              Text("Leaders", style: TextStyle(
                                color: Colors.grey, fontSize: 14
                              ),)
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Icon(Icons.trending_up, color: Colors.grey,),
                              ),
                              Text("Level Up", style: TextStyle(
                                fontSize: 14, color: Colors.grey
                              ),)
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Icon(Icons.dashboard, color: Colors.grey,),
                              ),
                              Text("Leaders", style: TextStyle(
                                fontSize: 14, color: Colors.grey
                              ),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 48),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Icon(Icons.code, color: Colors.grey,),
                              ),
                              Text("QR Code", style: TextStyle(
                                  color: Colors.black, fontSize: 14
                              ),)
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Icon(Icons.blur_circular, color: Colors.grey,),
                              ),
                              Text("Daily bonus", style: TextStyle(
                                color: Colors.black, fontSize: 14
                              ),)
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Icon(Icons.visibility, color: Colors.grey,),
                              ),
                              Text("Visitors", style: TextStyle(
                                color: Colors.black, fontSize: 14
                              ),)
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
