import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidaura_assg/scoped_model/ColorsFile.dart';


class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
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
              "https://www.kidaura.in/_next/image?url=%2FauraconnectLogo.svg&w=256&q=75",
              semanticsLabel: 'Logo',
          ),
              Text("Child's development report card for the parents. A mobile-based application designed to assess"
                  " the neurological development of children under the age-group of 2-6 years",
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
