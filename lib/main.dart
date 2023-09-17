import 'package:flutter/material.dart';
import 'package:project_kin_bech/app/app_routes.dart';
import 'package:project_kin_bech/screen/home/home_view_model/home_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const OnlineStore());

}
  class OnlineStore extends StatelessWidget {
    const OnlineStore({super.key});
  
    @override
    Widget build(BuildContext context) {
      return ChangeNotifierProvider(
        create: (context) => HomeViewModel(),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: Approuter.generateRoute,
          initialRoute: AppRoutes.welcomeScreen,
        ),
      );
    }
  }

