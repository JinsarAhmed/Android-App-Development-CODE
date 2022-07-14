import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/Projects/popular_widget.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(username: ""),
  ));
}

class HomeScreen extends StatefulWidget {
  // const HomeScreen({Key? key}) : super(key: key);

  HomeScreen({required this.username});
  final String username;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hi ${widget.username}, Here is your Dashboard"),
          centerTitle: true,
          backgroundColor: Colors.pink,
          actions: [
            Row(
              children: [
                Text(
                  widget.username,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/avatar1.jpg"),
                ),
              ],
            ),
          ],
        ),
        drawer: Drawer(
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
                    Text(widget.username),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "User123@gmail.com",
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
              ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.pinkAccent,
                ),
                title: Text("Logout"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          // margin: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Exclusive Discounted deals for you!",
                  style: GoogleFonts.ptSans(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 30,
                ),
                PopularWidget(),
                SizedBox(
                  height: 30,
                ),
                Divider(
                  indent: 10,
                  endIndent: 10,
                  color: Colors.black,
                ),
                Text("Categories",
                    style: GoogleFonts.ptSans(
                        fontWeight: FontWeight.bold, fontSize: 30)),
                Divider(
                  indent: 10,
                  endIndent: 10,
                  color: Colors.black,
                ),
                Text(
                  "Desi",
                  style: GoogleFonts.ptSans(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      myCustomContainer(
                          pading: EdgeInsets.all(10),
                          imageLocation: "assets/images/Biryani.jpg",
                          title: "Biryani",
                          price: "180rs",
                          alert_title: "Biryani is good",
                          alert_content: "order now"),
                      myCustomContainer(
                          pading: EdgeInsets.all(10),
                          imageLocation: "assets/images/tikka2.jpg",
                          title: "Tikka",
                          price: "300rs",
                          alert_title: "Tikka is good",
                          alert_content: "order now"),
                      myCustomContainer(
                          pading: EdgeInsets.all(10),
                          imageLocation: "assets/images/qorma2.jpg",
                          title: "Qorma",
                          price: "250rs",
                          alert_title: "Qorma is good",
                          alert_content: "order now"),
                    ],
                  ),
                ),
                Divider(
                  indent: 20,
                  endIndent: 20,
                  color: Colors.pinkAccent,
                ),
                Text(
                  "Fast Food",
                  style: GoogleFonts.ptSans(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      myCustomContainer(
                          pading: EdgeInsets.all(10),
                          imageLocation: "assets/images/pasta2.jpg",
                          title: "Pasta",
                          price: "600rs",
                          alert_title: "Biryani is good",
                          alert_content: "order now"),
                      myCustomContainer(
                          pading: EdgeInsets.all(10),
                          imageLocation: "assets/images/burger2.jpg",
                          title: "Chicken Burger",
                          price: "400rs",
                          alert_title: "Biryani is good",
                          alert_content: "order now"),
                      myCustomContainer(
                          pading: EdgeInsets.all(10),
                          imageLocation: "assets/images/pizza2.jpg",
                          title: "Pizza",
                          price: "1000rs",
                          alert_title: "Biryani is good",
                          alert_content: "order now")
                    ],
                  ),
                ),
                Divider(
                  indent: 20,
                  endIndent: 20,
                  color: Colors.pinkAccent,
                ),
                Text(
                  "Continental",
                  style: GoogleFonts.ptSans(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      myCustomContainer(
                          pading: EdgeInsets.all(10),
                          imageLocation: "assets/images/steak.jpg",
                          title: "Steak",
                          price: "2300rs",
                          alert_title: "Steak is good",
                          alert_content: "order now"),
                      myCustomContainer(
                          pading: EdgeInsets.all(10),
                          imageLocation: "assets/images/lasagna.jpg",
                          title: "Lasagna",
                          price: "1600rs",
                          alert_title: "Lasagna is good",
                          alert_content: "order now"),
                      myCustomContainer(
                          pading: EdgeInsets.all(10),
                          imageLocation: "assets/images/fries.jpg",
                          title: "Fries",
                          price: "500rs",
                          alert_title: "Fries are good",
                          alert_content: "order now")
                    ],
                  ),
                ),
                Divider(
                  indent: 20,
                  endIndent: 20,
                  color: Colors.pinkAccent,
                ),
                Text(
                  "All-In-One",
                  style: GoogleFonts.ptSans(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      myCustomContainer(
                          pading: EdgeInsets.all(10),
                          imageLocation: "assets/images/qorma2.jpg",
                          title: "Qorma",
                          price: "200rs",
                          alert_title: "Biryani is good",
                          alert_content: "order now"),
                      myCustomContainer(
                          pading: EdgeInsets.all(10),
                          imageLocation: "assets/images/burger2.jpg",
                          title: "Burger",
                          price: "400rs",
                          alert_title: "Biryani is good",
                          alert_content: "order now"),
                      myCustomContainer(
                          pading: EdgeInsets.all(10),
                          imageLocation: "assets/images/pasta2.jpg",
                          title: "Pasta",
                          price: "600rs",
                          alert_title: "Biryani is good",
                          alert_content: "order now"),
                      myCustomContainer(
                          pading: EdgeInsets.all(10),
                          imageLocation: "assets/images/Biryani.jpg",
                          title: "Biryani",
                          price: "180rs",
                          alert_title: "Biryani is good",
                          alert_content: "order now"),
                      myCustomContainer(
                          pading: EdgeInsets.all(10),
                          imageLocation: "assets/images/tikka2.jpg",
                          title: "Tikka",
                          price: "300rs",
                          alert_title: "Tikka is good",
                          alert_content: "order now"),
                      myCustomContainer(
                          pading: EdgeInsets.all(10),
                          imageLocation: "assets/images/pizza2.jpg",
                          title: "Pizza",
                          price: "1000rs",
                          alert_title: "Biryani is good",
                          alert_content: "order now")
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class myCustomContainer extends StatelessWidget {
  bool barrier = true; // for the alertdialog to close

  String imageLocation;
  String title;
  String price;
  EdgeInsetsGeometry? pading;
  // alert dialog credentials
  String alert_title;
  String alert_content;

  // constructor
  myCustomContainer({
    this.pading,
    required this.imageLocation,
    required this.title,
    required this.price,
    required this.alert_title,
    required this.alert_content,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            // barrierColor: Colors.blueAccent,
            barrierDismissible: barrier,
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                // titlePadding: EdgeInsets.all(50),
                backgroundColor: Colors.blueAccent,
                title: Text(alert_title),
                content: Text(alert_content),
                actions: [
                  TextButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => Description()),
                      // ); // to close the alert dialog
                    },
                    child: Text(
                      "See details",
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context); // to close the alert dialog
                    },
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              );
            });
      },
      // onlongpress()
      onLongPress: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return Expanded(
                  child: AlertDialog(
                backgroundColor: Colors.white,
                title: Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                content: Column(
                  children: [
                    Image(
                      width: 100,
                      height: 100,
                      image: AssetImage(imageLocation),
                    ),
                    Divider(
                      color: Colors.pinkAccent,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Text(
                      "Price :  ${price}",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.pinkAccent),
                    ),
                    Divider(
                      color: Colors.pinkAccent,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Text(
                      "Description: ",
                      style: GoogleFonts.ptSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 29,
                          color: Colors.pinkAccent),
                    ),
                    Divider(
                      color: Colors.pinkAccent,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Text(
                      "*  Tasty ${title}\n*  Serves 1-2 persons\n*  Freshly Prepared\n*  Spicy and Nonspicy both availaible\n*  Order Now! ",
                      style: GoogleFonts.ptSans(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Cancel")),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondRoute()),
                        );
                      },
                      child: Text("Buy")),
                ],
              ));
            });
      },
      child: Container(
        //color: Colors.black,
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(imageLocation),
              radius: 100,
            ),
            Text(
              '$title',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              '$price',
              style: TextStyle(
                color: Colors.pink,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to Hacker's Page"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Go back!")),
      ),
    );
  }
}
