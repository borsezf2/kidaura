import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidaura_assg/scoped_model/ColorsFile.dart';


class Page4 extends StatefulWidget {
  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
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
              "https://www.kidaura.in/_next/image?url=%2FcomLogo.svg&w=256&q=75",
              semanticsLabel: 'Logo',
          ),
              Text("A bridge between experts and parents of children with special needs,"
                  " And nice assistive platform that bridges the communication gap between the specialist "
                  "and caretaker of children to facilitate improved home reinforcement.",
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
