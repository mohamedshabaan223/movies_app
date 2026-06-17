import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/resourses/color_manger.dart';
import 'package:movies_app/core/route/route_app.dart';
import 'package:movies_app/core/route/route_genrator.dart';

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 870),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenrator.getRoute,
        initialRoute: RouteApp.mainShellScreen,
        theme: ThemeData(
          scaffoldBackgroundColor: ColorManger.backgroundColor,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: ColorManger.gray
          )
        ),
      ),
    );
  }
}