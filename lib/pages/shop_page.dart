import 'package:flutter/material.dart';
import '../components/shoe_tile.dart';
import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[100],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Search",
                style: TextStyle(color: Colors.grey[500], fontSize: 16),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
                size: 25,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Text(
            "Everyone flies... some fly longer than others.",
            style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16,
                fontStyle: FontStyle.italic),
          ),
        ),

        //  hot picks

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Hot Pics 🔥",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                "see all",
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
        ),

        SizedBox(
          height: 10,
        ),

        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              //Create Shoe...
              Shoe shoe = Shoe(name: "Air Jordan",
                  price: "24000",
                  imagePath: "images/shoe4.png",
                  discription: "Cool Shoes");
              return ShoeTile(
                shoe: shoe,
              );
            },
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
          child: Divider(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
