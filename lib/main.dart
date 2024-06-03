import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:form_builder_validators/localization/l10n.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:timeago/timeago.dart';
import 'package:yeohaeng_ttukttak/di/setup_providers.dart';
import 'package:yeohaeng_ttukttak/domain/model/global_state.dart';
import 'package:yeohaeng_ttukttak/domain/model/place_suggestion.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_screen.dart';
import 'package:yeohaeng_ttukttak/theme.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(PlaceSuggestionAdapter());
  Hive.registerAdapter(GlobalStateAdapter());

  setLocaleMessages('ko', KoMessages());

  runApp(MultiProvider(
    providers: [...globalProviders],
    child: const MainApp(),
  ));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    const materialTheme = MaterialTheme(TextTheme());

    return MaterialApp(
        supportedLocales: const [
          Locale("ko"),
          Locale("en")
        ],
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          FormBuilderLocalizations.delegate,
        ],
        debugShowCheckedModeBanner: false,
        theme: buildCustomTheme(materialTheme.light()),
        darkTheme: buildCustomTheme(materialTheme.dark()),
        themeMode: ThemeMode.system,
        title: 'Flutter Maps Demo',
        home: Builder(builder: (context) {
          return const MainScreen();
        }));
  }
}

ThemeData buildCustomTheme(ThemeData themeData) {
  final textTheme = themeData.textTheme;
  final colorScheme = themeData.colorScheme;

  final colorTheme = themeData.colorTheme;

  final typography = themeData.brightness == Brightness.light
      ? Typography().black
      : Typography().white;

  return themeData.copyWith(
    textTheme: typography.apply(
        fontFamily: 'Pretendard', displayColor: colorTheme.foreground),
    scaffoldBackgroundColor: colorTheme.background,
    colorScheme: colorScheme.copyWith(background: colorTheme.background),
    // [Bar Themes] ----------------------------------------------------------
    appBarTheme: AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: colorTheme.background),
    bottomAppBarTheme: BottomAppBarTheme(
        elevation: 0, color: colorTheme.backgroundDark.withOpacity(0.9)),
    tabBarTheme: themeData.tabBarTheme.copyWith(
      indicatorSize: TabBarIndicatorSize.tab,
      labelPadding: const EdgeInsets.symmetric(horizontal: 24),
      labelStyle: const TextStyle(fontWeight: FontWeight.w600),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
    ),
    navigationBarTheme: themeData.navigationBarTheme.copyWith(
        elevation: 0,
        indicatorColor: Colors.transparent,
        backgroundColor: colorTheme.backgroundDark.withOpacity(0.9),
        labelTextStyle: MaterialStateTextStyle.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return const TextStyle(fontWeight: FontWeight.w600, fontSize: 12);
          }
          return const TextStyle(fontSize: 12);
        })),
    // [Button Themes] -------------------------------------------------------
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
      textStyle: textTheme.titleMedium,
    )),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            side: BorderSide(color: colorTheme.border),
            textStyle: const TextStyle(fontWeight: FontWeight.w600),
            foregroundColor: colorTheme.foreground,
            backgroundColor: colorTheme.background)),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            foregroundColor: colorTheme.foreground,
            backgroundColor: colorTheme.background,
            textStyle: const TextStyle(fontWeight: FontWeight.w600),
            side: BorderSide(color: colorTheme.foreground))),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        elevation: 0,
        shape: StadiumBorder(side: BorderSide(color: colorTheme.border)),
        foregroundColor: colorTheme.foreground,
        backgroundColor: colorTheme.background),
    filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
            foregroundColor: colorTheme.background,
            backgroundColor: colorTheme.foreground,
            textStyle: const TextStyle(fontWeight: FontWeight.w600))),
    // [Widget Themes] -------------------------------------------------------
    dividerTheme:
        themeData.dividerTheme.copyWith(color: colorTheme.borderLight),
    bottomSheetTheme: themeData.bottomSheetTheme
        .copyWith(backgroundColor: colorTheme.background),
    chipTheme: themeData.chipTheme.copyWith(
        backgroundColor: colorTheme.background,
        checkmarkColor: colorTheme.background,
        selectedColor: colorTheme.foreground,
        iconTheme: themeData.iconTheme.copyWith(size: 14),
        labelStyle: textTheme.labelMedium
            ?.copyWith(color: colorTheme.inverseStateColor),
        shape: StadiumBorder(side: BorderSide(color: colorTheme.border))),
    expansionTileTheme: themeData.expansionTileTheme.copyWith(),
    listTileTheme: themeData.listTileTheme.copyWith(
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: colorTheme.foreground),
        subtitleTextStyle:
            TextStyle(fontSize: 14, color: colorTheme.foreground)),
  );
}

extension ColorTheme on ThemeData {
  ColorThemeInner get colorTheme => ColorThemeInner(brightness);
}

class ColorThemeInner {
  final Brightness brightness;

  ColorThemeInner(this.brightness);

  Color get border => _setColor(Colors.grey.shade300, Colors.grey.shade900);

  Color get borderLight =>
      _setColor(Colors.grey.shade100, const Color(0XFF171717));

  Color get foreground => _setColor(Colors.black, Colors.white);
  Color get background => _setColor(Colors.white, Colors.black);
  Color get backgroundDark => _setColor(Colors.grey.shade200, Colors.black);

  Color get backgroundLight => _setColor(Colors.white54, Colors.black54);
  Color get foregroundLight => _setColor(Colors.black54, Colors.white54);

  Color get inverseStateColor => MaterialStateColor.resolveWith((states) =>
      states.contains(MaterialState.selected) ? background : foreground);

  Color get stateColor => MaterialStateColor.resolveWith((states) =>
      states.contains(MaterialState.selected) ? foreground : background);

  Color _setColor(Color light, Color dark) =>
      (brightness == Brightness.light) ? light : dark;
}
