import 'package:flutter/material.dart';
import 'Homepage.dart';
import 'constants/User_Colors.dart';
import 'package:four_in_one_clock/weather/sp_client.dart';
import 'package:four_in_one_clock/store/home_page_store.dart';
import 'package:four_in_one_clock/pages/home_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:four_in_one_clock/weather/d9l.dart';
// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   Future.wait([SpClient.getInstance()]).then((_) async {
//     if (SpClient.sp.getString('cid') == null) {
//       SpClient.sp.setString('cid', 'CN101210101'); 
//     }
//     homePageStore.cid = SpClient.sp.getString('cid');
//     D9l().lang = SpClient.sp.getString('lang') ?? 'zh';
//     await homePageStore.getWeather();
//     runApp(MyApp());
//   });
// }
void main(){
  WidgetsFlutterBinding.ensureInitialized();
  Future.wait([SpClient.getInstance()]).then((_) async {
    if (SpClient.sp.getString('cid') == null) {
      SpClient.sp.setString('cid', 'CN101210101'); // 第一次安装APP默认显示广州天气
    }
    homePageStore.cid = SpClient.sp.getString('cid');
    D9l().lang = SpClient.sp.getString('lang') ?? 'zh';
    await homePageStore.getWeather();
  });
 runApp(EasyLocalization(child: MyHomepage()));
}


class MyHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var data = EasyLocalizationProvider.of(context).data ;
    return EasyLocalizationProvider(
      data: data,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: TextTheme(
            body1: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Varela',
              color: Color(User_Colors().purple)),
            headline: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Varela',
              color: Color(User_Colors().purple)),
          ),
        ),

        title: 'clock',
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          EasylocaLizationDelegate(
            locale: data.locale,
            path: 'assets/langs', // 多语言路径
          ),
        ],
        supportedLocales: [Locale('en', 'US'), Locale('zh', 'CN')],
        locale: data.savedLocale,
      home: Homepage(title: 'Clock Design'),

    
      ),
    );
  }
}
