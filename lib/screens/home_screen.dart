import 'package:flutter/material.dart';
import 'package:twitter/screens/settings_screen.dart';
import 'package:twitter/widgets/tweets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Container(
            padding: EdgeInsets.only(top: 12, bottom: 12),
            child: Builder(builder: (BuildContext context) {
              return GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: CircleAvatar(
                  child: Text('T'),
                  backgroundColor: Colors.red.shade400,
                ),
              );
            }),
          ),
          automaticallyImplyLeading: false,
          title: Center(
            child: Image(
              height: 26,
              width: 26,
              image: AssetImage('images/logo.png'),
            ),
          ),
        ),
        drawer: TwitterDrawer(),
        bottomSheet: Text('Bootom sheet'),
        body: TweetsWidget());
  }
}

class TwitterDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(
                child: Text('T'),
                backgroundColor: Colors.red.shade400,
              ),
              trailing: Builder(
                builder: (BuildContext context) {
                  return GestureDetector(
                    child: Icon(Icons.more_vert),
                    onTap: () {
                      Scaffold.of(context)
                          .showBottomSheet((context) => Text('Bootom sheet'));
                    },
                  );
                },
              ),
            ),
            ListTile(
              leading: Text(
                'Sanjay Upadhyay',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              trailing: Icon(
                Icons.lock,
                color: Colors.black,
                size: 15,
              ),
            ),
            DrawerList(
              iconData: Icons.person,
              listTitle: 'Profile',
            ),
            DrawerList(
              iconData: Icons.topic,
              listTitle: 'Topics',
            ),
            DrawerList(
              iconData: Icons.bookmark,
              listTitle: 'Bookmarks',
            ),
            DrawerList(
              iconData: Icons.view_list,
              listTitle: 'Twitter Circle',
            ),
            DrawerList(
              iconData: Icons.person,
              listTitle: 'Follower Requests',
            ),
            ExpansionTile(
              title: Text('Professional Tools'),
              children: [
                DrawerList(
                  listTitle: 'Twitter for Professionals',
                  iconData: Icons.rocket,
                ),
                DrawerList(
                  listTitle: 'Monetizations',
                  iconData: Icons.money,
                )
              ],
            ),
            ExpansionTile(
              title: Text('Setting and Support'),
              children: [
                DrawerList(
                  listTitle: 'Settings and Privacy',
                  iconData: Icons.settings,
                  onClick: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SettingScreen();
                    }));
                  },
                ),
                DrawerList(
                  listTitle: 'Help Centre',
                  iconData: Icons.question_mark_rounded,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DrawerList extends StatelessWidget {
  DrawerList({this.iconData, this.listTitle, this.onClick});
  final IconData? iconData;
  final String? listTitle;
  final Function? onClick;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        color: Colors.black,
      ),
      title: Text('$listTitle'),
      onTap: () {
        onClick!();
      },
    );
  }
}
