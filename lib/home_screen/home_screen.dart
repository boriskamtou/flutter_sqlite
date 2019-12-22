import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                FontAwesomeIcons.listUl,
                color: Color(0xFF454544),
                size: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'TASKS',
                    style: Theme.of(context).textTheme.title,
                  ),
                  Container(
                    height: height * .1,
                    width: width * .1,

                    child: FloatingActionButton(
                      elevation: 8,
                      child: Icon(Icons.add),
                      onPressed: (){

                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.checkCircle,
              color: Theme.of(context).iconTheme.color,
              size: 30,
            ),
            title: Text(
              'Tasks',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.calendarAlt,
              color: Theme.of(context).iconTheme.color.withOpacity(0.6),
              size: 30,
            ),
            title: Text(
              'Calendar',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Theme.of(context).iconTheme.color.withOpacity(0.6),
              size: 30,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
