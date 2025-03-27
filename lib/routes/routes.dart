import 'package:final_clean/features/home_screen/presentation/pages/home_screen.dart';
import 'package:final_clean/features/news/presentation/cubit/news_cubit.dart';
import 'package:final_clean/features/news/presentation/pages/news_page.dart';
import 'package:final_clean/routes/paths.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static final router = GoRouter(
    initialLocation: Paths.homePage,
    routes: [
      GoRoute(
        path: Paths.homePage,
        builder:
            (context, state) => BlocProvider(
              create: (context) => NewsCubit(),
              child: const NewsPage(),
            ),
      ),
    ],
  );
}
