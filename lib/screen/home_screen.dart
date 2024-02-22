import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:project_structure/resourse/util/string_dictionary.dart';
import 'package:project_structure/resourse/widget/primary_button_widget.dart';
import 'package:project_structure/screen/nev_bar/one_screen.dart';

/**
 *  PROJECT_NAME:-  Project
 *  Project Created by AGM Khair Sabbir
 *  DATE:- 30/1/24
 */
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

@override
  void dispose() {
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringDictionary.APP_NAME),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Home Screen' , textAlign: TextAlign.center,),
            CachedNetworkImage(
              width: 120,
              imageUrl:
              "https://avatars.githubusercontent.com/u/71348295?s=200&v=4",
              placeholder: (context, url) => Icon(Icons.ac_unit),
              errorWidget: (context, url, error) => Image.asset(
                "assets/images/image.png",
              ),
            ),
            PrimaryButton(label: 'Next Screen', isDisabled: false,onPressed: (){
              PersistentNavBarNavigator.pushNewScreen(
                context,
                screen: OneScreen(),
                withNavBar: true, // OPTIONAL VALUE. True by default.
                pageTransitionAnimation: PageTransitionAnimation.cupertino,
              );
            },),
          ],
        ),
      ),
    );
  }
}
