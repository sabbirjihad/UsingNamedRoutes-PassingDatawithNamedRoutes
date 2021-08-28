import 'package:flutter/material.dart';

import 'contact.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation page',
    theme: ThemeData(primarySwatch: Colors.blue),
    home: MyApp(),
    routes: {
      '/contact': (ctx) => Contact(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Passing Data with Named Routes'),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: () {
              //Navigator.push(context, MaterialPageRoute(builder: (cxt)=> Contact('Sabbir Ahmed')));
              //Navigator.push(context, MaterialPageRoute(builder: (cxt)=> Contact(messege:'Sabbir Ahmed')));
              // Navigator.pushNamed(context, '/contact');
              Navigator.of(context)
                  .pushNamed('/contact',
                  arguments: {
                    'id':1,
                    'name':'  Sabbir Ahmed',
                    'phone': '  01778755512',
                    'Address':'  Dhaka'
                  });
            },
            child: Text('Go to contact Page'),
          ),
        ),
      ),
    );
  }
}
