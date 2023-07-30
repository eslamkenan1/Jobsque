import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../repos/language_list.dart';
import '../components/language_item.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFDFEFF),
        iconTheme: IconThemeData(color: Color(0xFF3D3E42)),
        automaticallyImplyLeading: true,
        title: Text(
          'Language',
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontFamily: 'Outfit',
                color: Color(0xFF111725),
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return LanguageItem(language: languages[index]);
        },
        itemCount: languages.length,
      ),
    );
  }
}
