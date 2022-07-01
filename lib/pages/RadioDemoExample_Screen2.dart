import 'package:flutter/material.dart';
import 'package:my_first_app/pages/RadioDemo_Example.dart';

class RadioDemoExample_Screen2 extends StatefulWidget {
  //const RadioDemoExample_Screen2({Key? key}) : super(key: key);

  RadioDemoExample_Screen2(this.gender, this.level, this.shift,
      this.socialmedia, this.title, this.name);
  final Gender? gender;
  final Level? level;
  final Shift? shift;
  final SocialMedia? socialmedia;
  final JobTitle? title;
  //final TextEditingController? nameController;
  final String? name;

  @override
  State<RadioDemoExample_Screen2> createState() =>
      _RadioDemoExample_Screen2State();
}

class _RadioDemoExample_Screen2State extends State<RadioDemoExample_Screen2> {
  String? companyName = "ORIC Technologies PVT LTD";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RichText(
              text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: "Email for scheduling an interview of candidate\n"),
              TextSpan(
                  text: "Invitation to interview ${companyName}/Interview \n"),
              //if(JobTitle == JobTitle.)
              TextSpan(
                  text:
                      "with ${companyName} for the ${widget.title.toString().split('.').last} position\n"),

              TextSpan(text: "\nHi Dear Mr ${widget.name}\n"),
              TextSpan(text: "\nThankyou for applying to ${companyName}\n"),
              TextSpan(
                  text:
                      "You are doing well, your skill level is too good as you are an ${widget.level.toString().split('.').last}"),
              TextSpan(
                  text:
                      " and you are selected in ${companyName} in ${widget.shift.toString().split('.').last} are timing start from\n"),
              TextSpan(
                  text: "${widget.shift.toString().split('.').last} 9 to 4 \n"),
              TextSpan(
                  text:
                      "\n We will be connected on your extremely used social media ${widget.socialmedia.toString().split('.').last}"),
            ],
          )),
          // Text(
          //     "Email for scheduling an interview of candidate\n Invitation to interview ${companyName}/Interview \n"),
        ],
      ),
    );
  }
}
