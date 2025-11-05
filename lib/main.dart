import 'package:easy_book/core/utilts/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EasyBook());
}

class EasyBook extends StatelessWidget {
  const EasyBook({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig:AppRouter.router ,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(),
    );
  }
}