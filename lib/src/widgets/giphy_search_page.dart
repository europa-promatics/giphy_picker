import 'package:flutter/material.dart';
import 'package:giphy_picker/src/widgets/giphy_search_view.dart';

class GiphySearchPage extends StatelessWidget {
  final Widget title;

  const GiphySearchPage({this.title});

  Widget customBar() {
    return PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: Container(
            child: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
          child: Container(
            color: Colors.white,
            child: AppBar(
              backgroundColor: new Color(0xFF4361EE),
              title: Text('Search GIF'),
              flexibleSpace: Image(
                image: AssetImage('assets/topnav_cropped.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customBar(),
        body: SafeArea(child: GiphySearchView(), bottom: false));
  }
}
