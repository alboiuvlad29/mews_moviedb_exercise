import 'package:flutter/material.dart';
import 'package:mews_moviedb_exercise/src/core/domain/app_config.dart';
import 'package:mews_moviedb_exercise/src/core/router/app_router.dart';
import 'package:mews_moviedb_exercise/src/core/shared/locator.dart';

void main() {
  runAppWithSetUp();
}

Future<void> runAppWithSetUp() async {
  WidgetsFlutterBinding.ensureInitialized();
  const AppConfig config = AppConfig(
      movieDBConfig: MovieDBConfig(
    serviceBaseUrl: 'https://api.themoviedb.org/3/',
    apiKey: '03b8572954325680265531140190fd2a',
  ));
  await setupLocator(config);
  Paint.enableDithering = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppRouter router = sl<AppRouter>();
    final ThemeData theme = ThemeData.dark().copyWith(
        indicatorColor: Colors.white,
        splashFactory: NoSplash.splashFactory,
        cardColor: const Color(0xff2D2F3B),
        scaffoldBackgroundColor: const Color(0xff121420),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff2D2F3B),
          shadowColor: Color(0xffACACD1),
          elevation: 0.6,
        ));
    return MaterialApp.router(
      title: 'Movie Exercise',
      theme: theme,
      darkTheme: theme,
      debugShowCheckedModeBanner: false,
      routerDelegate: router.delegate(),
      routeInformationParser: router.defaultRouteParser(),
      routeInformationProvider: router.routeInfoProvider(),
    );
  }
}
