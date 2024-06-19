import 'package:flutter/material.dart';
import 'package:indicators/providers/foodprovider.dart';
import 'package:indicators/providers/foodtype_provider.dart';
import 'package:indicators/widgets/menu_card.dart';
import 'package:provider/provider.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});
  static String route = '/menu';

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    final catcher = ModalRoute.of(context)!.settings.arguments;
    final foodtype = Provider.of<FoodTypeProvider>(context).foodTypes;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Menu',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white, // Set the color of the custom back arrow icon
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 30,
            );
          },
          itemBuilder: (context, index) {
            return ChangeNotifierProvider.value(
              value: foodtype[index],
              child: MenuCard(),
            );
          },
          itemCount: foodtype.length,
        ),
      ),
    );
  }
}
