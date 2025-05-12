import 'package:community/core/utils/app_style.dart';
import 'package:community/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      title: Text('Hi, Ahamed 👋🏻', style: AppStyle.bold20),
      subtitle: Text(
        'Today is a good day\nto learn something new!',
        style: AppStyle.regular12,
      ),
      trailing: SvgPicture.asset(Assets.imagesAvatar),
    );
  }
}
