import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/presentations/navigations/main_page.dart';
import 'package:ta_recipe_app/presentations/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await dotenv.load(fileName: ".env");
  runApp(EasyLocalization(
    path: 'assets/translations',
    startLocale: const Locale('id'),
    supportedLocales: const [Locale('id'), Locale('en', 'US')],
    child: const RecipeApp(),
  ));
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => UserAuthenticationBloc()
              ..add(
                  UserAuthenticationEvent.checkSignInStatus(context: context))),
        // BlocProvider(
        //     create: (context) =>
        //         WalletBloc()..add(const WalletEvent.getBalance())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: const SafeArea(child: MainPage()),
      ),
    );
  }
}
