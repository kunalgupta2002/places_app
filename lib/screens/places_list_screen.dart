import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './add_place_screen.dart';
import '../providers/great_places.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Places'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Consumer(
        builder: (context, GreatPlaces? greatPlaces, ch) {
          if (greatPlaces?.items.isEmpty ?? true) {
            return Center(
              child: Text('Got No places yet, start adding some please'),
            );
          } else {
            return ListView.builder(
              itemCount: greatPlaces!.items.length,
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  backgroundImage: FileImage(
                    greatPlaces.items[index].image,
                  ),
                ),
                title: Text(greatPlaces.items[index].title),
                onTap: () {
                  // Add functionality here if needed
                },
              ),
            );
          }
        },
      ),
    );
  }
}
