import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBarTitle extends StatelessWidget {

  final String title;
  final double fontSize;

  NavBarTitle({@required this.title, @required this.fontSize});

  @override
  Widget build(BuildContext context) {

    return CupertinoPageScaffold(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
            return <Widget>[
              CupertinoSliverNavigationBar(
                border: Border(bottom: BorderSide(color: Colors.transparent)),
                largeTitle: Text(title,
                  style: TextStyle(
                    fontSize: fontSize,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              )
            ];
          },
          body: Center(child: Text('Home Page',
            style: TextStyle(
              fontSize: fontSize,
              color: Theme.of(context).accentColor,
            ),
          ),
          ),
        ),
    );



  }



}