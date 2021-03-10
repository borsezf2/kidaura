import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'package:scoped_model/scoped_model.dart';

mixin Methods on Model {

  List CountryData = [] ;


  PageController pageController = new PageController(initialPage: 0);

  int getCurrentPage(){
    int pg = 0;
    // print("pg start");
    try{
      pg = pageController.page.toInt() ;
    }catch(e){
      pg = 0;
      // print("pg = "+pg.toString());
    }
    notifyListeners();
    return pg;
  }

  void nextPage(){
    int page_no = pageController.page.toInt() + 1 ;
    pageController.animateToPage(
      page_no,
      duration: Duration(milliseconds: 300),
      curve: Curves.linear,);
    notifyListeners();
  }

  void getRegionDetails()async{
    String url = "https://restcountries.eu/rest/v2/region/asia";
    http.Response response = await http.get(Uri.parse(url));

    // print("DATA = "+response.body.toString());
    var temp = jsonDecode(response.body.toString());
    // print("pass");
    CountryData = temp ;
    print("Countries = "+CountryData.length.toString());
    notifyListeners();
  }

  String getLanguages(List data){
    String Langs = "";
    for(int i=0;i<data.length;i++){
      Langs = data[i]['name']+ ", " + Langs;
    }
    // print("LANGS = "+Langs);
    return Langs ;

  }

  String getBoders(List data){
    String Borders = "";
    for(int i=0;i<data.length;i++){
      Borders = data[i]+ ", " + Borders;
    }
    return Borders ;
  }

}
