import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp((MaterialApp(
    home: QuoteList(),
  )));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  // List<String> quotes=[
  //   'Have Patience & just hustle',
  //   'Dignify your belief',
  //   'Silently listen and plan'
  // ];

  List<Quote> quotes=[
    Quote(author: 'Mr. Kohli',text: 'Dignify your belief'),
    Quote(author: 'Mr. Simran',text: 'Have Patience & just hustle'),
    Quote(author: 'Mr. Simranpal',text: 'Silently listen and plan'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        // ------------- List<String> quote used to display on screen-------------
        // children: quotes.map((quote) => Text(quote)).toList(),
        // ------------- List<Quote> Quote class has been created-------------
        // children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
        // ------------- List<String> quote used to display on screen-------------
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

