import 'package:flutter/material.dart';

Widget foodCard(String img, String title, String price){

  return Container(
    decoration: BoxDecoration(
      color: Color(0xFFfc6a26),
      borderRadius: BorderRadius.circular(16),
    ),
    child: Card(
      child: Padding(
        padding:  EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              img,
              height: 100,
            ),
            SizedBox(height: 8,),
            Flexible(
              child:Text(
                title,
                style: TextStyle(

                  fontSize:22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "$price £",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                IconButton(
                  icon:Icon(Icons.favorite_border,
                    color: Colors.black,

                  ),
                  onPressed: (){},
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}