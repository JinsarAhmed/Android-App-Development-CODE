import 'package:flutter/material.dart';
import 'package:my_first_app/Projects/HomeScreen.dart';
import 'package:my_first_app/Projects/offers.dart';

class PopularWidget extends StatefulWidget {
  const PopularWidget({Key? key}) : super(key: key);

  @override
  State<PopularWidget> createState() => _PopularWidgetState();
}

class _PopularWidgetState extends State<PopularWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          offers_list.length,
          (i) => InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => HomeScreen(username: ""),
              ),
            ),
            child: Container(
              // color: Colors.pink[500],
              width: 232,
              height: 210,
              margin: EdgeInsets.only(
                left: i == 0 ? 30 : 0,
                right: 30,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.pink,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 16,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(14),
                        topRight: Radius.circular(14),
                      ),
                      image: DecorationImage(
                        image:
                            AssetImage('assets/images/${offers_list[i].image}'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(offers_list[i].offer_title,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            Text(offers_list[i].validity,
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 18,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(offers_list[i].rating.toString(),
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// working version....
/*

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularWidget extends StatefulWidget {
  const PopularWidget({Key? key}) : super(key: key);

  @override
  State<PopularWidget> createState() => _PopularWidgetState();
}

class _PopularWidgetState extends State<PopularWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Text("Exclusive offers just for you!",
              style: GoogleFonts.ptSans(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black,
              )),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image(
                image: AssetImage("assets/images/offer1.jpg"),
                width: 400,
                height: 400,
              ),
              Image(
                image: AssetImage("assets/images/offer2.jpg"),
                width: 400,
                height: 400,
              ),
              Image(
                image: AssetImage("assets/images/offer3.jpg"),
                width: 400,
                height: 400,
              ),
              Image(
                image: AssetImage("assets/images/offer4.jpg"),
                width: 400,
                height: 400,
              ),
              Image(
                image: AssetImage("assets/images/offer5.jpg"),
                width: 400,
                height: 400,
              ),
              Image(
                image: AssetImage("assets/images/offer6.jpg"),
                width: 400,
                height: 400,
              ),
              Image(
                image: AssetImage("assets/images/offer7.jpg"),
                width: 400,
                height: 400,
              ),
              Image(
                image: AssetImage("assets/images/foodpanda_offers.jpg"),
                width: 400,
                height: 400,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
*/
