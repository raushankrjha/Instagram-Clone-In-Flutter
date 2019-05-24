import 'package:flutter/material.dart';
import 'package:instagram_clone/model/stories.dart';

class Stories extends StatelessWidget {
  

  final stories = Expanded(
    child:  new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:  storiesData.length,
        itemBuilder: (context, index) => new Stack(
              alignment: Alignment.bottomRight,
              children: <Widget>[
                new Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                          storiesData[index].imageUrl)),
                  ),
                  
                  margin: const EdgeInsets.only(top:5.0,left: 5.0,right: 5.0,bottom: 20.0),
                ),
              
                  new Text(
                  storiesData[index].name,
                    style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                  
          
              ],
            ),
      ),
    
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
     
      child: new Column(
        children: <Widget>[
          stories,
        ],
      ),
    );
  }
}