import 'package:final_clean/features/home_screen/presentation/pages/home_screen.dart';
import 'package:final_clean/routes/paths.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static final router = GoRouter(
    initialLocation: Paths.homePage,
    routes: [
      GoRoute(
        path: Paths.homePage,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
