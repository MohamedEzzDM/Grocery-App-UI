import 'package:ecommerce_app/groceries_app/config/route/app_router.dart';
import 'package:ecommerce_app/groceries_app/config/themes/app_theme.dart';
import 'package:ecommerce_app/observer_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'groceries_app/modules/account/presentation/screens/splash_screen.dart';

void main() {

  Bloc.observer= MyBlocObserver();

  runApp(const GroceriesApp());
}

class GroceriesApp extends StatelessWidget {
  const GroceriesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: SplashScreen.id,

    );
  }
}
