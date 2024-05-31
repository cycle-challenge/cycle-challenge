import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:form_builder_validators/localization/l10n.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:timeago/timeago.dart';
import 'package:yeohaeng_ttukttak/di/setup_providers.dart';
import 'package:yeohaeng_ttukttak/domain/model/place_suggestion.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_screen.dart';
import 'package:yeohaeng_ttukttak/theme.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(PlaceSuggestionAdapter());

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
        theme: materialTheme.light().copyWith(
            textTheme: Typography().black.apply(fontFamily: 'Pretendard')),
        darkTheme: materialTheme.dark().copyWith(
            textTheme: Typography().white.apply(fontFamily: 'Pretendard')),
        themeMode: ThemeMode.system,
        title: 'Flutter Maps Demo',
        home: Builder(builder: (context) {
          return Theme(
              data: buildCustomTheme(Theme.of(context)),
              child: const MainScreen());
        }));
  }
}

ThemeData buildCustomTheme(ThemeData themeData) {
  final textTheme = themeData.textTheme;
  final colorScheme = themeData.colorScheme;

  final colorTheme = themeData.colorTheme;

  return themeData.copyWith(
    dividerColor: colorTheme.border,
      dividerTheme: themeData.dividerTheme.copyWith(
        color: colorTheme.border
      ),
      listTileTheme: themeData.listTileTheme.copyWith(
          titleTextStyle:
              textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600)),
      colorScheme: colorScheme.copyWith(background: colorTheme.background),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(textStyle: textTheme.labelMedium)),
      appBarTheme: const AppBarTheme(),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              foregroundColor: colorTheme.foreground,
              backgroundColor: colorTheme.background)),
      bottomSheetTheme: themeData.bottomSheetTheme
          .copyWith(backgroundColor: colorTheme.background),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              foregroundColor: colorTheme.foreground,
              backgroundColor: colorTheme.background,
              side: BorderSide(color: colorTheme.foreground))),
      filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
              side: BorderSide(color: colorTheme.border),
              backgroundColor: colorTheme.background,
              foregroundColor: colorTheme.foreground,
              textStyle: textTheme.labelMedium)),
      chipTheme: themeData.chipTheme.copyWith(
          backgroundColor: colorTheme.background,
          checkmarkColor: colorTheme.background,
          selectedColor: colorTheme.foreground,
          iconTheme: themeData.iconTheme.copyWith(size: 14),
          labelStyle: textTheme.labelMedium
              ?.copyWith(color: colorTheme.inverseStateColor),
          shape: StadiumBorder(side: BorderSide(color: colorTheme.border))),
      bottomAppBarTheme: const BottomAppBarTheme(elevation: 0),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          elevation: 0,
          shape: StadiumBorder(side: BorderSide(color: colorTheme.border)),
          foregroundColor: colorTheme.foreground,
          backgroundColor: colorTheme.background),
      navigationBarTheme: themeData.navigationBarTheme.copyWith(
          elevation: 0,
          indicatorColor: Colors.transparent,
          backgroundColor: colorTheme.background.withOpacity(0.85),
          labelTextStyle: MaterialStateTextStyle.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return textTheme.labelMedium!
                  .copyWith(fontWeight: FontWeight.w600);
            }
            return textTheme.labelMedium!;
          })));
}

extension ColorTheme on ThemeData {
  ColorThemeInner get colorTheme => ColorThemeInner(brightness);
}

class ColorThemeInner {
  final Brightness brightness;

  ColorThemeInner(this.brightness);

  Color get border => _setColor(Colors.grey.shade300, Colors.grey.shade900);

  Color get foreground => _setColor(Colors.black, Colors.white);
  Color get background => _setColor(Colors.white, Colors.black);

  Color get backgroundLight => _setColor(Colors.white54, Colors.black54);
  Color get foregroundLight => _setColor(Colors.black54, Colors.white54);

  Color get inverseStateColor => MaterialStateColor.resolveWith((states) =>
      states.contains(MaterialState.selected) ? background : foreground);

  Color get stateColor => MaterialStateColor.resolveWith((states) =>
      states.contains(MaterialState.selected) ? foreground : background);

  Color _setColor(Color light, Color dark) =>
      (brightness == Brightness.light) ? light : dark;
}