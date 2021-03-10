import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidaura_assg/scoped_model/ColorsFile.dart';


class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
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
              "https://www.kidaura.in/_next/image?url=%2FkidauraLogo.svg&w=256&q=75",
              semanticsLabel: 'Logo',
          ),
              Text("Kidaura aims to provide innovative solutions to create a "
                  "positive impact on the lives of the children facing developmental "
                  "challenges in the age group of 3-6 years. Take a home based assessment today and find out if "
                  "your child is developing typically, like other children of their age.",
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
