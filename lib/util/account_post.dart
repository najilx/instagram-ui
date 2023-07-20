import 'package:flutter/material.dart';
import 'package:instagram_ui/util/ExploreGrid.dart';
class AccountPost extends StatelessWidget {
  const AccountPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExploreGrid(),
    );
  }
}