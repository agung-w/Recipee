import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ta_recipe_app/bloc/create_recipe_bloc.dart';
import 'package:ta_recipe_app/bloc/my_profile_page_bloc.dart';
import 'package:ta_recipe_app/bloc/order_page_bloc.dart';
import 'package:ta_recipe_app/bloc/profile_page_bloc.dart';
import 'package:ta_recipe_app/bloc/recipe_detail_bloc.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/cubit/comment_cubit.dart';
import 'package:ta_recipe_app/cubit/metric_cubit.dart';
import 'package:ta_recipe_app/cubit/payment_cubit.dart';
import 'package:ta_recipe_app/cubit/save_recipe_cubit.dart';
import 'package:ta_recipe_app/cubit/shipping_cubit.dart';
import 'package:ta_recipe_app/ui/pages/main_page.dart';
import 'package:ta_recipe_app/ui/theme/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'helpers/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        BlocProvider(create: (_) => CreateRecipeBloc()),
        BlocProvider(create: (context) => ProfilePageBloc()),
        BlocProvider(create: (context) => MyProfilePageBloc()),
        BlocProvider(create: (context) => MetricCubit()..getLists()),
        BlocProvider(create: (context) => SaveRecipeCubit()),
        BlocProvider(create: (context) => CommentCubit()),
        BlocProvider(create: (context) => OrderPageBloc()),
        BlocProvider(create: (context) => ShippingCubit()),
        BlocProvider(create: (context) => RecipeDetailBloc()),
        BlocProvider(create: (context) => PaymentCubit()),
        BlocProvider(
            create: (context) => UserAuthenticationBloc()
              ..add(const UserAuthenticationEvent.checkSignInStatus())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: SafeArea(
            child:
                BlocConsumer<UserAuthenticationBloc, UserAuthenticationState>(
          listener: (context, state) {
            context
                .read<MyProfilePageBloc>()
                .add(MyProfilePageEvent.started(authState: state));
          },
          builder: (context, state) {
            return const MainPage();
          },
        )),
      ),
    );
  }
}
