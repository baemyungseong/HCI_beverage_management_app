import 'package:flutter/material.dart';
import 'package:ui_fresh_app/constants/colors.dart';
import 'package:ui_fresh_app/constants/fonts.dart';
import 'package:ui_fresh_app/views/accountant/atRexxManagement_search_sreen.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  var SearchResults = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 218,
      height: 32,
      child: TextFormField(
        controller: SearchResults,
        onEditingComplete: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SrearchSreen(
              title: 'huhu',
            ),
          ),
        ),
        style: TextStyle(color: blackLight),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.only(left: 21, right: 8),
          hintStyle: TextStyle(
              fontFamily: 'SFProText',
              fontSize: content16,
              fontWeight: FontWeight.w400,
              color: blackLight.withOpacity(0.5)),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
