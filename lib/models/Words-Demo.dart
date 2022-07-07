import 'package:english_words/english_words.dart' as NounFile;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WordsDemo extends StatefulWidget {
  @override
  State<WordsDemo> createState() => _WordsDemoState();
}

class _WordsDemoState extends State<WordsDemo> {
  int currentindex = 0;
  Map<int, dynamic> mymap = {
    0: Adjective(),
    1: Noun(),
    2: All(),
    //4: AboutInNavigation(),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Words"),
        centerTitle: true,
      ),
      body: mymap[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        // for navigation b/w the navigation bar..
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
        selectedItemColor: Colors.amberAccent,
        backgroundColor: Colors.pinkAccent,
        currentIndex: currentindex,
        // required..
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Adjectives",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.image), label: "Noun"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin_rounded), label: "ALL"),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.notifications_active), label: "Notifications"),
        ],
      ),
    );
  }
}

class Adjective extends StatelessWidget {
  //const Adjective({Key? key}) : super(key: key);
  List<String> adj = NounFile.adjectives;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        itemCount: adj.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return new Text(adj[index], style: GoogleFonts.aladin());
        },
        separatorBuilder: (context, index) => Divider(
          color: Colors.pinkAccent,
        ),
      ),
    );
  }
}

class Noun extends StatelessWidget {
  //const Adjective({Key? key}) : super(key: key);
  List<String> Nouns = NounFile.nouns;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: Nouns.length,
          itemBuilder: (BuildContext ctxt, int index) {
            return new Text(Nouns[index]);
          }),
    );
  }
}

class All extends StatelessWidget {
  //const Adjective({Key? key}) : super(key: key);

  List<String> all = NounFile.all;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: all.length,
          itemBuilder: (BuildContext ctxt, int index) {
            return new Text(all[index]);
          }),
    );
  }
}
