import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  static const routeName = 'home_screen';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    Widget bottomNavigationBar(){
      return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).primaryColor.withOpacity(0.3),
              blurRadius: 18,
              offset: Offset(-10, -10),
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 16,
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

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                FontAwesomeIcons.thList,
                color: Color(0xFF454544),
                size: 24,
              ),
              SizedBox(
                height: height * 0.02,
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
              SizedBox(
                height: height * 0.02,
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: BouncingScrollPhysics(),
                  itemCount: 15,
                  itemBuilder: (context, index) {
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
                                      setState(() {
                                        checkBoxValue = !checkBoxValue;
                                      });
                                      value = checkBoxValue;
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.024,
                              ),
                              Text(
                                'Buy Coffee',
                                style: TextStyle(
                                  color: checkBoxValue ? Theme.of(context).textTheme.body1.color.withOpacity(.3) : Theme.of(context).textTheme.body1.color,
                                  decoration: checkBoxValue ? TextDecoration.lineThrough : null,
                                  decorationColor: Theme.of(context).primaryColor.withOpacity(.5),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '08:AM',
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
      bottomNavigationBar: bottomNavigationBar(),
    );
  }
}
