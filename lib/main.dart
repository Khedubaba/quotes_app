import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}


class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<String> quotes = [
    "Success is not final; failure is not fatal: It is the courage to continue that counts.",
    "The road to success and the road to failure are almost exactly the same.",
    "I believe you have to be willing to be misunderstood if you're going to innovate."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Quotes"),
        backgroundColor: Colors.redAccent[700],
        centerTitle: false,
      ),
      body: Column(
        children: <Widget>[

        ],
      ),
    );
  }
}


