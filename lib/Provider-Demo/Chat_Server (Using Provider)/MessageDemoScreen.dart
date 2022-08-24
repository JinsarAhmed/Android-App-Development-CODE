import 'package:flutter/material.dart';
import 'package:my_first_app/Provider-Demo/Chat_Server%20(Using%20Provider)/ProviderDemoModel.dart';
import 'package:my_first_app/models/DemoModel.dart';
import 'package:provider/provider.dart';

// void main() {
//   runApp(
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (context) => ProviderDemoModel()),
//         ChangeNotifierProvider(create: (context) => DemoModel()),
//         ChangeNotifierProvider(create: (context) => LoginScreen()),
//       ],
//       child: MaterialApp(
//         home: TaskScreen(),
//       ),
//     ),
//   );
// }
//
class TaskScreen extends StatefulWidget with ChangeNotifier {
  final String? username;
  TaskScreen({this.username});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  TextEditingController controllerr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<String> textlist = Provider.of<ProviderDemoModel>(context).namesList;
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.pinkAccent,
            title: Text("Chat Server"),
            centerTitle: true,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount:
                      Provider.of<ProviderDemoModel>(context).namesList.length,
                  itemBuilder: (BuildContext context, int index) {
                    // message (using provider)
                    String message = Provider.of<ProviderDemoModel>(context)
                        .namesList[index];
                    // subtitle (using provider)
                    String subtitle =
                        Provider.of<DemoModel>(context).username.toString();
                    return ListTile(
                      title: Text(
                        message,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      tileColor: Colors.pink[300],
                      subtitle: Text(subtitle),
                      onLongPress: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: Colors.red,
                                title: Text("Warning!"),
                                content:
                                    Text("Do you want to delete this message?"),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text("Cancel")),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        Provider.of<ProviderDemoModel>(context,
                                                listen: false)
                                            .Delete(index);
                                      },
                                      child: Text("Delete")),
                                ],
                              );
                            });
                      },
                    );
                  },
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: controllerr,
                        decoration: InputDecoration(
                            label: Text("Write Something..."),
                            filled: true,
                            fillColor: Colors.pink[200],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            )),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            Provider.of<ProviderDemoModel>(context,
                                    listen: false)
                                .addData(controllerr.text);
                            controllerr.clear();
                          });
                        },
                        icon: Icon(
                          Icons.send,
                          color: Colors.pink,
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
