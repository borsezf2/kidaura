import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidaura_assg/scoped_model/ColorsFile.dart';


class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
      child: Center(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 1.5,
                spreadRadius: 1.2,
                offset: Offset(2,2)
              )
            ]

          ),
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.network(
              "https://www.kidaura.in/_next/image?url=%2FspLogo.svg&w=256&q=75",
              semanticsLabel: 'Logo',
          ),
              Text("Fun way of assessment for the kids"
                  "Game-based assessment for children to check their development.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ),
      ),
    );
  }
}
