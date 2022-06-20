import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../color/color.dart';

class _HorizontalBorder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      margin: EdgeInsets.symmetric(horizontal: 16),
      color: Colors.grey[200],
    );
  }
}

class _AppColumn extends StatelessWidget {
  final String name;
  final Icon icon;
  final String percentage;

  const _AppColumn({
    Key? key,
    required this.name,
    required this.icon,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        name,
        style: TextStyle(color: kColorText),
      ),
      trailing: Text(
        percentage,
        style: TextStyle(color: kColorText),
      ),
    );
  }
}

class AppsDrainage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: ClipOval(
            child: Container(
              color: kColorPurple,
              child: Icon(Icons.apps, color: Colors.white),
            ),
          ),
          title: Text(
            'Apps Drainage',
            style: TextStyle(color: kColorTitle),
          ),
          subtitle: Text(
            'Show the most draining energy application',
            style: TextStyle(color: kColorText),
          ),
        ),
        Material(
          color: Colors.white,
          elevation: kElevation,
          borderRadius: BorderRadius.circular(16),
          child: Column(
            children: [
              _AppColumn(
                icon: Icon(Icons.sms, color: Colors.indigo),
                name: 'SMSApp',
                percentage: '75%',
              ),
              _HorizontalBorder(),
              _AppColumn(
                icon: Icon(Icons.live_tv, color: Colors.red),
                name: 'MovieApp',
                percentage: '60%',
              ),
              _HorizontalBorder(),
              _AppColumn(
                icon: Icon(Icons.place, color: Colors.green),
                name: 'MapApp',
                percentage: '35%',
              ),
              _HorizontalBorder(),
              _AppColumn(
                icon: Icon(Icons.local_grocery_store, color: Colors.orange),
                name: 'ShoppingApp',
                percentage: '35%',
              ),
              _HorizontalBorder(),
              _AppColumn(
                icon: Icon(Icons.train, color: Colors.black),
                name: 'TrainApp',
                percentage: '15%',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
