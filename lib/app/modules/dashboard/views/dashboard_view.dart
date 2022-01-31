import 'package:flutter/material.dart';
import 'package:recipes/app/data/recipes.dart';
import 'package:recipes/app/modules/dashboard/data_model.dart';
import 'package:recipes/app/modules/dashboard/providers/data_provider.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:get/get.dart';
import 'package:recipes/app/data/authencationmanager.dart';
import 'package:recipes/app/routes/app_pages.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  AuthenticationManager auth = AuthenticationManager();
  DashboardController dashboardcontroller = Get.put(DashboardController());
  Message data = Message();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "What do you want \n to cook today?",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 40, color: Color(0xFF3d3232)),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xfff8f7f7),
                      borderRadius: BorderRadius.circular(20)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Recipes",
                      icon: Icon(
                        Icons.search,
                        color: Color(0xFFfd7463),
                      ),
                      iconColor: Color(0xFFfd7463),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular lunch recipes",
                      style: TextStyle(
                        color: Color(0xFF3d3232),
                        fontSize: 20,
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        dashboardcontroller.getrecipe();
                      },
                      child: Text("view all",
                          style: TextStyle(
                            color: Color(0xFF3d3232).withOpacity(.7),
                            fontSize: 16,
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                height: 560,
                child: ListView.builder(
                  // dragStartBehavior: DragStartBehavior.down,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.all(20),
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  reverse: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFfd7463),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView(
                            primary: false,
                            children: [
                              // Image.network(""),
                              SizedBox(
                                height: 220,
                              ),
                              Text("",
                                  style: TextStyle(
                                    color: Color(0xFF2B2626),
                                    fontSize: 28,
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              Text(" 20 min",
                                  style: TextStyle(
                                    color: Color(0xFF3d3232),
                                    fontSize: 12,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    AuthenticationManager().logOut();
                    Get.offNamedUntil(Routes.LOGIN, (route) => false);
                  },
                  child: Icon(Icons.sailing_outlined))
            ],
          ),
        ),
        bottomNavigationBar:
            SalomonBottomBar(unselectedItemColor: Color(0xFFfd7463),
                // selectedItemColor: Colors.white,
                items: [
              SalomonBottomBarItem(
                icon: Icon(Icons.home),
                title: Text("Home"),
              ),
              SalomonBottomBarItem(
                icon: Icon(Icons.search),
                title: Text("Search"),
              ),
              SalomonBottomBarItem(
                icon: Icon(Icons.delete_outline),
                title: Text("recipes"),
              ),
              SalomonBottomBarItem(
                icon: Icon(Icons.bookmark),
                title: Text("bookmark"),
              ),
            ]),
      ),
    );
  }
}
