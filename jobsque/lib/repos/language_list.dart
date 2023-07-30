import 'package:flutter/material.dart';

import '../Models/language.dart';

List<Language> languages = [
  Language(
      name: "English",
      image: Image.network(
        "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Flag_of_the_United_Kingdom_%281-2%29.svg/330px-Flag_of_the_United_Kingdom_%281-2%29.svg.png",
        width: 50,
        height: 30,
        fit: BoxFit.cover,
      )),
  Language(
    name: "Indonesia",
    image: Image.network(
      "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Flag_of_Indonesia.svg/188px-Flag_of_Indonesia.svg.png",
      width: 50,
      height: 30,
      fit: BoxFit.cover,
    ),
  ),
  Language(
      name: "Arabic",
      image: Image.network(
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/188px-Flag_of_Saudi_Arabia.svg.png",
        width: 50,
        height: 30,
        fit: BoxFit.cover,
      )),
  Language(
      name: "Chinese",
      image: Image.network(
        "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Flag_of_the_People%27s_Republic_of_China.svg/188px-Flag_of_the_People%27s_Republic_of_China.svg.png",
        width: 50,
        height: 30,
        fit: BoxFit.cover,
      )),
  Language(
      name: "Dutch",
      image: Image.network(
        "https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Flag_of_the_Netherlands.svg/188px-Flag_of_the_Netherlands.svg.png",
        width: 50,
        height: 30,
        fit: BoxFit.cover,
      )),
  Language(
      name: "German",
      image: Image.network(
        "https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Flag_of_Germany.svg/188px-Flag_of_Germany.svg.png",
        width: 50,
        height: 30,
        fit: BoxFit.cover,
      )),
  Language(
      name: "Japanese",
      image: Image.network(
        "https://upload.wikimedia.org/wikipedia/en/thumb/9/9e/Flag_of_Japan.svg/188px-Flag_of_Japan.svg.png",
        width: 50,
        height: 30,
        fit: BoxFit.cover,
      )),
  Language(
      name: "Korean",
      image: Image.network(
        "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/188px-Flag_of_South_Korea.svg.png",
        width: 50,
        height: 30,
        fit: BoxFit.cover,
      )),
  Language(
      name: "Portugese",
      image: Image.network(
        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Flag_of_Portugal.svg/188px-Flag_of_Portugal.svg.png",
        width: 50,
        height: 30,
        fit: BoxFit.cover,
      )),
];
