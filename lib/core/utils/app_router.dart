import 'package:community/feature/home/presntaion/view/home_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static var router = GoRouter(
    routes: [GoRoute(path: '/', builder: (context, state) => HomeView())],
  ); // Replace '/home' with the desired path
}
