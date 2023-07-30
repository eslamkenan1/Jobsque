import 'package:flutter/material.dart';
import '../Models/language.dart';

class LanguageItem extends StatefulWidget {
  Language language;
  LanguageItem({super.key, required this.language});

  @override
  State<LanguageItem> createState() => _LanguageItemState();
}

class _LanguageItemState extends State<LanguageItem> {
  bool _isChosen = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Color(0xffdedfe3)))),
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: widget.language.image,
          ),
          title: Text(
            widget.language.name,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          trailing: Checkbox(
              value: _isChosen,
              onChanged: (value) {
                setState(() {
                  _isChosen = !_isChosen;
                });
              },
              activeColor: Theme.of(context).primaryColor,
              shape: const CircleBorder()),
        ),
      ),
    );
  }
}
