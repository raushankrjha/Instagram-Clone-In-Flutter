import 'package:flutter/material.dart';
import 'package:instagram_clone/model/post.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: postData.length,
      itemBuilder: (context,i) =>
       new Column(
        children: <Widget>[
         Row(
                  children: <Widget>[     
                   Flexible(
                  fit: FlexFit.loose,
                  child: new Image.network(
                    postData[i].postUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                        ],
                      ),
                     
           ],
      ),
    );
  }


  
}
