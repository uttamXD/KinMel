import 'package:flutter/material.dart';
import 'package:project_kin_bech/constants/color_theme.dart';
import 'package:project_kin_bech/constants/text_theme.dart';
import 'package:project_kin_bech/screen/home/home_view_model/home_view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
        title: Center(
          child: Text(
            "KinMel",
            style: titleText,
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
      body: providerdata.isloading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        // Row(
                        //   children: [
                        //     Expanded(
                        //       child: Text("KinMel", style: titleText),
                        //     ),
                        //     IconButton(
                        //         onPressed: () {},
                        //         icon: const Icon(Icons.grid_view_outlined))
                        //   ],
                        // ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Search...',
                              contentPadding: const EdgeInsets.all(16.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              suffixIcon: const Icon(Icons.search)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Categories",
                      style: midText,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 6,
                    width: MediaQuery.of(context).size.width,
                    child: Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: ((context, index) => Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Card(
                                    color: Colors.white,
                                    elevation: 8,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Column(children: [
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      SizedBox(
                                        height: 100,
                                        width: 100,
                                        child: Image.network(
                                            categoriesList[index]),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        categoriesListName[index],
                                        style: midText,
                                      )
                                    ]),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}

List<String> categoriesList = [
  'https://www.tcl.com/usca/content/dam/tcl/product/headphones/elit/teaser/720x480_0013_ELIT400BTBL_beauty.png',
  'https://e0.pxfuel.com/wallpapers/703/398/desktop-wallpaper-gold-and-diamond-jewellery-beautiful-design-transparent-background-jewellery-png.jpg',
  'https://i.pinimg.com/originals/ac/86/59/ac86596c61511123f7f7cb68b320cc6f.png',
  'https://i.pinimg.com/originals/53/6b/00/536b00aa08d2f2e1c4490b3d595f4251.png'
];
List<String> categoriesListName = [
  'Electronc',
  'Jellewery',
  'Men\'s clothing',
  'Women\'s clothing',
];
