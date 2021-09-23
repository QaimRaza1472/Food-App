import 'package:desi_login/foodcard.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MyApp(),);


}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Store App",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

List <String> imgUrl=[
  "https://cdn.imgbin.com/9/19/16/imgbin-indian-cuisine-take-out-raj-of-india-street-food-indian-spices-yTPF7DNpwbz5Zir84YTW94BNu.jpg",
  "https://cdn.imgbin.com/9/19/16/imgbin-indian-cuisine-take-out-raj-of-india-street-food-indian-spices-yTPF7DNpwbz5Zir84YTW94BNu.jpg",
  "https://cdn.imgbin.com/20/25/9/imgbin-kebab-chicken-tikka-indian-cuisine-tandoori-chicken-grill-photo-of-fried-foods-vegetable-salads-and-dipping-tray-on-plate-EB4cZgth9xsVtKXZgeL2SMpCM.jpg",
  "https://cdn.imgbin.com/20/25/9/imgbin-kebab-chicken-tikka-indian-cuisine-tandoori-chicken-grill-photo-of-fried-foods-vegetable-salads-and-dipping-tray-on-plate-EB4cZgth9xsVtKXZgeL2SMpCM.jpg",
  "https://cdn.imgbin.com/20/25/9/imgbin-kebab-chicken-tikka-indian-cuisine-tandoori-chicken-grill-photo-of-fried-foods-vegetable-salads-and-dipping-tray-on-plate-EB4cZgth9xsVtKXZgeL2SMpCM.jpg",
  "https://cdn.imgbin.com/20/25/9/imgbin-kebab-chicken-tikka-indian-cuisine-tandoori-chicken-grill-photo-of-fried-foods-vegetable-salads-and-dipping-tray-on-plate-EB4cZgth9xsVtKXZgeL2SMpCM.jpg",
];



class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFcfcfc),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFcfcfc),
        centerTitle: true,
        title: Text("Food App",
          style: TextStyle(
            color: Color(0xFFfc6a26),
            fontSize: 20,
          ),
        ),
        leading: IconButton(
            icon:Icon(Icons.menu,
              color: Colors.black,
            ),
            onPressed: (){},
            ),
        actions: [
          IconButton(
              icon:Icon(Icons.shopping_cart,
              color: Colors.black,
              ),
            onPressed: (){},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:43,vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Let's Eat\nOrder your food Now",
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 50,
              width:double.infinity,
              decoration: BoxDecoration(
                color: Color(0x55d2d2d2),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                       padding:EdgeInsets.only(left: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search....",
                          ),
                        ),
                      ),
                  ),
                  RaisedButton(
                    elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15,
                      ),
                      child: Icon(Icons.search,
                      color: Colors.white,
                      ),
                      onPressed: (){},
                    color: Color(0xFFfc6a26),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
                child: GridView.count(
                  childAspectRatio: 0.7,
                  crossAxisCount: 2,
                  children: [
                    foodCard(imgUrl[0], "Vegetable", "200"),
                    foodCard(imgUrl[1], "Vegetable", "150"),
                    foodCard(imgUrl[2], "Meat", "150"),
                    foodCard(imgUrl[3], "Meat", "150"),
                    foodCard(imgUrl[4], "Meat", "150"),
                    foodCard(imgUrl[5], "Meat", "150"),
                  ],
                ),
            ),
          ],
        ),
      ),


      ///////////////////////      Bottom Bar   //////////////////
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Color(0xFFfcfcfc),
        selectedItemColor: Color(0xFFfc6a26),
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.store),
            title: Text("Our Store"),
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.favorite),
            title: Text("Favorite"),
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.person),
            title: Text("Profile"),
          ),
        ],
      ),
    );
  }
}



