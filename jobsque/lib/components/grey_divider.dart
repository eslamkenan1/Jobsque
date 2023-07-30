import 'package:flutter/material.dart';

class greyDivider extends StatelessWidget {
  const greyDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(color: Colors.grey, indent: 30, endIndent: 30);
  }
}
