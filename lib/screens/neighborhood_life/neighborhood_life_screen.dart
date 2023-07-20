import 'package:carrot_market_ui/models/neighborhood_life.dart';
import 'package:carrot_market_ui/screens/components/appbar_preferred_size.dart';
import 'package:carrot_market_ui/screens/neighborhood_life/components/life_body.dart';
import 'package:carrot_market_ui/screens/neighborhood_life/components/life_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NeighborhoodLifeScreen extends StatelessWidget {
  const NeighborhoodLifeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('동네생활'),
        actions: [
          IconButton(icon: const Icon(CupertinoIcons.search), onPressed: () {}),
          IconButton(
              icon: const Icon(CupertinoIcons.plus_rectangle_on_rectangle),
              onPressed: () {}),
          IconButton(icon: const Icon(CupertinoIcons.bell), onPressed: () {}),
        ],
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: [
          const LifeHeader(),
          ...List.generate(
            neighborhoodLifeList.length,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: LifeBody(
                neighborhoodLife: neighborhoodLifeList[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}
