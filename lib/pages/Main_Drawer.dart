import 'package:flutter/material.dart';
import 'package:my_first_app/pages/BottomNavigation.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.pinkAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/avatar1.jpg"),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("Unknown Developer"),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "App Developer",
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.monetization_on_outlined,
              color: Colors.pinkAccent,
            ),
            title: Text("Become a pandapro"),
            onTap: () {
              // print("Home clicked!");
            },
          ),
          ListTile(
            leading: Icon(
              Icons.favorite_border,
              color: Colors.pinkAccent,
            ),
            title: Text("Favourites"),
            onTap: () {
              // print("sent clicked!");
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.pinkAccent,
            ),
            title: Text("About"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => AboutMe()));
              print('About');
              // setState(() {
              //   //currentIndex = widget.index!;
              // });
              //Navigator.of(context).pushNamed(AboutMe.route);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.list,
              color: Colors.pinkAccent,
            ),
            title: Text("Orders and reordering"),
            onTap: () {
              // print("sent clicked!");
            },
          ),
          ListTile(
            leading: Icon(
              Icons.perm_identity_outlined,
              color: Colors.pinkAccent,
            ),
            title: Text("Profile"),
            onTap: () {
              // print("sent clicked!");
            },
          ),
          ListTile(
            leading: Icon(
              Icons.location_on_outlined,
              color: Colors.pinkAccent,
            ),
            title: Text("Adresses"),
            onTap: () {
              // print("sent clicked!");
            },
          ),
          ListTile(
            leading: Icon(
              Icons.card_giftcard_sharp,
              color: Colors.pinkAccent,
            ),
            title: Text("Challenges & rewards"),
            onTap: () {
              // print("sent clicked!");
            },
          ),
          ListTile(
            leading: Icon(
              Icons.airplane_ticket,
              color: Colors.pinkAccent,
            ),
            title: Text("Vouchers"),
            onTap: () {
              // print("sent clicked!");
            },
          ),
          ListTile(
            leading: Icon(
              Icons.info_outline,
              color: Colors.pinkAccent,
            ),
            title: Text("Help center"),
            onTap: () {
              // print("sent clicked!");
            },
          ),
        ],
      ),
    );
  }
}
