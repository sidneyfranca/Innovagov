import 'package:flutter/material.dart';

import '../../core/theme/theme.dart';

class ErrorFeed extends StatelessWidget {
  const ErrorFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Ocorreu um erro",
        style: themeData.textTheme.displaySmall,
      ),
    );
  }
}
