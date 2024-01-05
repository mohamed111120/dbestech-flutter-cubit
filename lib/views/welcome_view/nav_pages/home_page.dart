import 'package:dbestech/utils/app_large_text.dart';
import 'package:flutter/material.dart';

import '../../../widgets/indecator_tab_decoration.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
        body: Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //menu
          Container(
            padding: EdgeInsets.only(
              top: 70,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  size: 30,
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(.5)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          //Discover Text
          AppLargeText(text: 'Discover'),
          SizedBox(
            height: 20,
          ),
          //Tap Bar
          Container(
            width: double.maxFinite,
            child: TabBar(
              tabAlignment: TabAlignment.values[0],
              indicator:
                  CircleTAbIndicator(color: Colors.deepPurple, radius: 4),
              labelPadding: EdgeInsets.symmetric(horizontal: 10),
              dividerHeight: 0,
              controller: tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              tabs: [
                Tab(
                  text: 'Places',
                ),
                Tab(text: 'Inspiration'),
                Tab(text: 'Emotions'),
              ],
            ),
          ),
          Container(
            height: 300,
            width: double.maxFinite,
            child: TabBarView(controller: tabController, children: [
             ListView.builder(
               itemCount: 3,
               scrollDirection: Axis.horizontal,
               itemBuilder: (context, index) {
               return Container(
                 margin: EdgeInsets.only(right: 10,top: 15),
                 width: 200,
                 height: 300,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(20),
                   image: DecorationImage(
                     fit: BoxFit.cover,
                     image: AssetImage(
                       'assets/images/image 2.jpg',
                     ),
                   ),
                 ),
               );
             },),
              Text('There'),
              Text('Bye')
            ]),
          )
        ],
      ),
    ));
  }
}
