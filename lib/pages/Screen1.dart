import 'package:flutter/material.dart';
import 'package:kidaura_assg/pages/Screen2.dart';
import 'package:kidaura_assg/pageviews/page1.dart';
import 'package:kidaura_assg/pageviews/page2.dart';
import 'package:kidaura_assg/pageviews/page3.dart';
import 'package:kidaura_assg/pageviews/page4.dart';
import 'package:kidaura_assg/pageviews/pageviewIndicator.dart';
import 'package:kidaura_assg/scoped_model/ColorsFile.dart';
import 'package:kidaura_assg/scoped_model/MainModel.dart';
import 'package:scoped_model/scoped_model.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

  MainModel model ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    model = ScopedModel.of(context);
    model.getRegionDetails();
  }

  @override
  Widget build(BuildContext context) {

    return ScopedModelDescendant<MainModel>(
        builder: (context, child, mainModel)
    {
      return Scaffold(
        backgroundColor: BG_color,
        appBar: AppBar(
          title: Text("Pageview"),
          backgroundColor: Main_color,
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            PageViewIndicator(),
            Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 1.5,
              // color: Colors.red.shade200,
              child: PageView(
                controller: mainModel.pageController,
                  physics:new NeverScrollableScrollPhysics(),
                children: [
                  Page1(),
                  Page2(),
                  Page3(),
                  Page4()
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Main_color,
                  onPrimary: Colors.white,
                  onSurface: Colors.grey,
                  padding: EdgeInsets.only(
                      right: 100, left: 100, top: 20, bottom: 20)
              ),
              child: Text("NEXT"),
              onPressed: () {

                mainModel.nextPage();
                if ( mainModel.getCurrentPage()==3){
                  // mainModel.getRegionDetails();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));
                }
                print("Next tapped = "+ mainModel.getCurrentPage().toString());
              },
            )
          ],
        ),
      );
    });
  }
}
