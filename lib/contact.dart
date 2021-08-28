import 'package:flutter/material.dart';
class Contact extends StatelessWidget {
// const Contact({Key? key}) : super(key: key);
  String messege='';
  // Contact(String messege)
  // {
  //  this.messege=messege;
  // }
  //  Contact(this.messege);
  //Contact({required this.messege});

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)!.settings.arguments as Map<String,Object>;
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Page'),
      ),
      body: Column(
        children: [
          Text('${data['id']}'),
          SizedBox(height: 10,),
          Text('${data['name']}'),
          SizedBox(height: 10,),
          Text('${data['phone']}'),
          SizedBox(height: 10,),
          Text('${data['Address']}'),
          ElevatedButton(
              onPressed: () {
                //Navigator.push(context, MaterialPageRoute(builder: (cxt)=> MyApp()));
                Navigator.pop(context);
              },
              child: Text('Get Back')
          ),
        ],
      ),
    );
  }
}