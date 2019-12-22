import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var checkBoxValue = false;
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
              SizedBox(
                height: height * 0.01,
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
                      onPressed: () {
                        print("Click on add button");
                      },
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 15,
                  itemBuilder: (_, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          checkBoxValue = !checkBoxValue;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 12,
                                  bottom: 12,
                                ),
                                child: SizedBox(
                                  height: 24,
                                  width: 24,
                                  child: Checkbox(
                                    activeColor: Theme.of(context).primaryColor,
                                    value: checkBoxValue,
                                    onChanged: (value) {
                                      value = checkBoxValue;
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.024,
                              ),
                              Text('Buy Coffee'),
                            ],
                          ),
                          Text(
                            '08:00 AM',
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        onTap: (value) {},
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
