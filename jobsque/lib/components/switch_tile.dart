import 'package:flutter/material.dart';

class SwitchTile extends StatefulWidget {
  String notificationName;
  SwitchTile({super.key, required this.notificationName});

  @override
  State<SwitchTile> createState() => _SwitchTileState();
}

class _SwitchTileState extends State<SwitchTile> {
  bool _jobSearch = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Container(
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Color(0xffdedfe3)))),
        child: SwitchListTile.adaptive(
            value: _jobSearch,
            onChanged: (value) {
              setState(() {
                _jobSearch = !_jobSearch;
              });
            },
            title: Text(widget.notificationName),
            activeColor: const Color(0xff3365ff),
            activeTrackColor: const Color(0xff3365ff),
            dense: false,
            controlAffinity: ListTileControlAffinity.trailing,
            contentPadding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12)),
      ),
    );
  }
}
