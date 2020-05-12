import 'package:flutter/material.dart';
import '../widgets/layout/scaffold.dart';

class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasePageScaffold(
      title: 'Not Found',
      child: Center(
        heightFactor: 2,
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Text(
            'Page not found',
          ),
        ),
      ),
    );
  }
}
