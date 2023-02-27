import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/presentations/navigations/main_page.dart';
import 'package:ta_recipe_app/presentations/theme/app_theme.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const RecipeApp());
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
        theme: lightTheme,
        darkTheme: darkTheme,
        home: const SafeArea(child: MainPage()),
      ),
    );
  }
}
