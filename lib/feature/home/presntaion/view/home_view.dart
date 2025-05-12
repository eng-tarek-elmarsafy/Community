import 'package:community/core/widget/height.dart';
import 'package:community/feature/home/presntaion/view/widget/continue_course.dart';
import 'package:community/feature/home/presntaion/view/widget/coustom_search.dart';
import 'package:community/feature/home/presntaion/view/widget/top_categories.dart';
import 'package:community/feature/home/presntaion/view/widget/welcome_card.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Height(17),
                    WelcomeCard(),
                    Height(26),
                    CoustomSearch(),
                    Height(18),
                    ContinueCourse(),
                    Height(8),
                    TopCategories(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
