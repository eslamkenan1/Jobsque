import 'package:flutter/material.dart';
import 'package:jobsque/screens/home_screen.dart';
import 'package:jobsque/screens/messages_screen.dart';

import '../screens/applied_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/saved_screen.dart';

const webScreenSize = 600;

const homeScreenItems = [
  HomeScreen(),
  MessagesScreen(),
  AppliedScreen(),
  SavedScreen(),
  ProfileScreen(),
];
