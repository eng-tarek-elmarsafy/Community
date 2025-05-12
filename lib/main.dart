import 'package:community/core/utils/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Community());
}

class Community extends StatelessWidget {
  const Community({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
