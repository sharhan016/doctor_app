import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'functions/jwt.dart';
import 'localization/localization.dart';
import 'screens/login.dart';
import './routes.dart';
import './providers/appoinments.dart';
import './providers/symptoms.dart';
import './providers/hospitals.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>();
    state.setLocale(newLocale);
  }

  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale;
  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AppoinmentsProvider(),
        ),
        // ChangeNotifierProvider(
        //   create: (context) => SymptomsProvider(),
        // ),
        // ChangeNotifierProvider(
        //   create: (context) => HospitalsProvider(),
        // ),
        ChangeNotifierProvider(
          create: (context) => JWTProvider(),
        ),
      ],
      child: MaterialApp(
        locale: _locale,
        supportedLocales: [Locale("en", "US"), Locale("mr", "IN")],
        localizationsDelegates: [
          DemoLocalization.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        localeResolutionCallback: (locale, supportedLocales) {
          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale.languageCode &&
                supportedLocale.countryCode == locale.countryCode) {
              return supportedLocale;
            }
          }
          return supportedLocales.first;
        },
        title: 'Doctor App',
        theme: ThemeData(
          primaryColor: const Color(0xff58D0D1),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Color(0xff151a53),
            showUnselectedLabels: false,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.grey[100],
          ),
          textTheme: TextTheme(
            //Aplied in Drawer Text's
            bodyText1: TextStyle(
              color: Color(0xff151a53),
              fontWeight: FontWeight.bold,
            ),
            //Applied on Hospital card and on Profile section
            bodyText2: TextStyle(
              color: Color(0xff151a53),
              fontWeight: FontWeight.bold,
            ),
          ),
          fontFamily: 'Monteserrat',
          iconTheme: IconThemeData(
            color: Color(0xff4b4b4b),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: 'loginscreen',
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
