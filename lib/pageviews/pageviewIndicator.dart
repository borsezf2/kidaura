import 'package:flutter/material.dart';
import 'package:kidaura_assg/scoped_model/ColorsFile.dart';
import 'package:kidaura_assg/scoped_model/MainModel.dart';
import 'package:scoped_model/scoped_model.dart';

class PageViewIndicator extends StatefulWidget {
  @override
  _PageViewIndicatorState createState() => _PageViewIndicatorState();
}

class _PageViewIndicatorState extends State<PageViewIndicator> {


  Widget returnIcon(int index, int current){

    // Current page indicator
    if (index==current){
      return Icon(Icons.fiber_manual_record,color: Main_color,);
    }
    // visited page indicator
    else if(index<current){
      return   Icon(Icons.check_circle,color: Colors.green,) ;
    }

    // Not visited page indicator
    return Icon(Icons.fiber_manual_record_outlined,color: Colors.white,);

  }



  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<MainModel>(
        builder: (context, child, mainModel)
    {
      return Container(
        width: MediaQuery
            .of(context)
            .size
            .width / 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            returnIcon(0, mainModel.getCurrentPage()),
            returnIcon(1, mainModel.getCurrentPage()),
            returnIcon(2, mainModel.getCurrentPage()),
            returnIcon(3, mainModel.getCurrentPage()),

          ],
        ),
      );
    });
  }
}
