import 'package:flutter/material.dart';

class LocationInput extends StatefulWidget {
  const LocationInput({Key? key}) : super(key: key);

  @override
  State<LocationInput> createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  late String _previewImageUrl;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 170,
          width: double.infinity,
          alignment: Alignment.center,
          // ignore: unnecessary_null_comparison
          child: _previewImageUrl == null
              ? Text(
                  'No location chosen',
                  textAlign: TextAlign.center,
                )
              : Image.network(
                  _previewImageUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
        ),
        Row(
          children: <Widget>[
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.location_on,
              ),
              label: Text('Current Location'),
            ),
             ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.map,
              ),
              label: Text('Select on Map'),
            ),
          ],
        ),
      ],
    );
  }
}
