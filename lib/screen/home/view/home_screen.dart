import 'package:flutter/material.dart';
import 'package:project_kin_bech/constants/color_theme.dart';
import 'package:project_kin_bech/screen/home/home_view_model/home_view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScrenState();
}

class _HomeScrenState extends State<HomeScreen> {
  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      Provider.of<HomeViewModel>(context, listen: false).getProduct();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final providerdata = Provider.of<HomeViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myColor,
        title: const Center(
          child: Text(
            "KinMel",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: providerdata.isloading,
    );
  }
}
