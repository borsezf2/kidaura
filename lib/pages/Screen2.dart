import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidaura_assg/scoped_model/ColorsFile.dart';
import 'package:kidaura_assg/scoped_model/MainModel.dart';
import 'package:scoped_model/scoped_model.dart';


class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {

    return ScopedModelDescendant<MainModel>(
        builder: (context, child, mainModel)
    {
      return Scaffold(
        backgroundColor: BG_color,
        appBar: AppBar(
          title: Text("Asia"),
          backgroundColor: Main_color,
          centerTitle: true,
        ),
        body: ListView.separated(
          padding: EdgeInsets.only(top: 10,bottom: 10),
          separatorBuilder: (context,index)=>SizedBox(height: 10,),
          itemCount: mainModel.CountryData.length,
          itemBuilder: (context,index){
            return Container(
              margin: EdgeInsets.only(left: 10,right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white38
              ),
              height: MediaQuery.of(context).size.height/6,
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    // color: Colors.blue,
                    width: MediaQuery.of(context).size.width/7,
                    child: Center(
                      child: SvgPicture.network(
                        mainModel.CountryData[index]["flag"].toString(),
                        semanticsLabel: 'flag',
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    // color: Colors.red,
                    // width: MediaQuery.of(context).size.width/4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name         : ",
                          style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                        Text("Capital       : ",
                          style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                        Text("Region       : ",
                          style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                        Text("SubRegion: ",
                          style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                        Text("Population: ",
                          style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                        Text("Languages: ",
                          style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                        Text("Borders      : ",
                          style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.red,
                    width: MediaQuery.of(context).size.width/2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text( mainModel.CountryData[index]["name"].toString(),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.normal),
                        ),
                        Text(mainModel.CountryData[index]["capital"].toString(),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.normal),
                        ),
                        Text(mainModel.CountryData[index]["region"].toString(),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.normal),
                        ),
                        Text(mainModel.CountryData[index]["subregion"].toString(),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.normal),
                        ),
                        Text(mainModel.CountryData[index]["population"].toString(),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.normal),
                        ),
                        Text(mainModel.getLanguages(mainModel.CountryData[index]["languages"]),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.normal),
                        ),
                        Text( mainModel.getBoders(mainModel.CountryData[index]["borders"]),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.normal),
                        ),

                      ],
                    ),
                  ),

                ],
              ),
            );
          },

        ),
      );
    });
  }
}


// ListTile(
//
// tileColor: Colors.transparent,
// title: Text(mainModel.CountryData[index]["name"].toString(),style: TextStyle(color: Colors.black),),
// leading:
// SvgPicture.network(
// mainModel.CountryData[index]["flag"].toString(),
// semanticsLabel: 'flag',
// height: 30,
// width: 30,
// ),
// )