import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';
import 'modules/home/home_module.dart';
import 'providers/app_theme_data.dart';
import 'util/const.dart';
import 'util/theme_config.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppThemeData()),
      ],
      child: ModularApp(module: HomeModule(), child: const MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppThemeData>(
      builder: (BuildContext context, AppThemeData themeData, Widget? child) {
        return MaterialApp.router(
          key: themeData.key,
          debugShowCheckedModeBanner: false,
          title: Constants.appName,
          theme: themeData.theme,
          darkTheme: ThemeConfig.darkTheme,
          routerConfig: Modular.routerConfig,

          // home: const HomePage(),
        );
      },
    );
  }
}
