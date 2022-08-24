import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    home: CurrencyConverter(),
  ));
}

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({Key? key}) : super(key: key);

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  TextEditingController amountController = TextEditingController();

  String dropdownNormal = "SEL";
  String dropdownCrypto = "SEL";
  String exdropdownNormal = "";
  String exdropdownCrypto = "BTC";
  double rate = 0.0;

  @override
  Widget build(BuildContext context) {
    // var amount = int.parse(amountController.text);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Currency Converter"),
          backgroundColor: Colors.deepOrange,
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Exchange Rate:",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      Text(
                        "1 $exdropdownCrypto = ",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$exdropdownNormal  $rate",
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: amountController,
                decoration: InputDecoration(
                    label: Text("Amount"),
                    icon: Icon(
                      Icons.attach_money,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DropdownButton<String>(
                      value: dropdownCrypto,
                      //  hint: Text("Select"),
                      items: [
                        DropdownMenuItem(
                          child: Text("Select"),
                          value: "SEL",
                        ),
                        DropdownMenuItem(
                          child: Text("BTC"),
                          value: "BTC",
                        ),
                        DropdownMenuItem(
                          child: Text("LTC"),
                          value: "LTC",
                        ),
                        DropdownMenuItem(
                          child: Text("ETH"),
                          value: "ETH",
                        ),
                        DropdownMenuItem(
                          child: Text("DOGE"),
                          value: "DOGE",
                        ),
                      ],
                      onChanged: (newValue) async {
                        print(newValue);
                        setState(() {
                          dropdownCrypto = newValue!;
                          exdropdownCrypto = newValue;
                        });
                        // var response = await http.get(Uri.parse(
                        //     'https://rest.coinapi.io/v1/exchangerate/BTC/$newValue/?apikey=D388EE9A-10F0-46E2-A816-B983C595985D'));
                        // print(response.statusCode);
                        //
                        // String responseBody = response.body;
                        // var jsonObject = jsonDecode(responseBody);
                        // rate = jsonObject["rate"];
                      }),
                  Icon(
                    Icons.arrow_forward_sharp,
                    color: Colors.deepOrange,
                    size: 30,
                  ),
                  DropdownButton<String>(
                      value: dropdownNormal,
                      //hint: Text("Select"),
                      items: [
                        DropdownMenuItem(
                          child: Text("Select"),
                          value: "SEL",
                        ),
                        DropdownMenuItem(
                          child: Text("USD"),
                          value: "USD",
                        ),
                        DropdownMenuItem(
                          child: Text("EUR"),
                          value: "EUR",
                        ),
                        DropdownMenuItem(
                          child: Text("INR"),
                          value: "INR",
                        ),
                        DropdownMenuItem(
                          child: Text("PKR"),
                          value: "PKR",
                        ),
                      ],
                      onChanged: (newValue) async {
                        print(newValue);
                        setState(() {
                          dropdownNormal = newValue!;
                          exdropdownNormal = newValue;
                        });
                      }),
                ],
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    String from;
                    String to;
                    from = dropdownCrypto;
                    to = dropdownNormal;
                    var response = await http.get(Uri.parse(
                        'https://rest.coinapi.io/v1/exchangerate/$from/$to/?apikey=D388EE9A-10F0-46E2-A816-B983C595985D'));
                    print(response.statusCode);

                    String responseBody = response.body;
                    var jsonObject = jsonDecode(responseBody);
                    rate = jsonObject["rate"];
                    print("converted from $from to $to");
                    print(rate);
                    setState(() {
                      dropdownNormal = "SEL";
                      dropdownCrypto = "SEL";
                    });
                  },
                  child: Text("Convert"),
                ),
              ),
              Container(
                child: Text("$rate"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// DropDown Button Widget example from internet
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['USD', 'EUR', 'PKR', 'INR']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
