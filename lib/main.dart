import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

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

  List<Quote> quotes = [
    Quote(text: "One of the tests of leadership is the ability to recognize a problem before it becomes an emergency.",
        author: "Arnold H. Glasow"),
    Quote(text: "I believe you have to be willing to be misunderstood if you're going to innovate.",
        author: "Jeff Bezos"),
    Quote(text: "When in doubt, mumble; when in trouble, delegate; when in charge, ponder.",
        author: "James H. Boren"),

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
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: (){
            setState(() {
              quotes.remove(quote);
            });
          }
        )).toList(),
      ),
    );
  }
}
//End of Code

//children: quotes.map((quote) => quoteTemplate(quote)).toList(),
//children: quotes.map((quote) => Text("${quote.text} - ${quote.author}")).toList(),