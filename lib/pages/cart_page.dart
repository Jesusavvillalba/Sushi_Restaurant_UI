import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_restaurant_app/components/button.dart';
import 'package:sushi_restaurant_app/models/food.dart';
import 'package:sushi_restaurant_app/models/shop.dart';

class CartPages extends StatelessWidget {
  const CartPages({super.key});

  void removeFromCart(Food food, BuildContext context) {
    final shop = context.read<Shop>();

    shop.removeFromCart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'My Cart',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 138, 60, 55),
          elevation: 0,
        ),
        body: Container(
          color: Color.fromARGB(255, 138, 60, 55),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: value.cart.length,
                  itemBuilder: (context, index) {
                    final Food food = value.cart[index];
                    final String foodName = food.name;
                    final String foodPrice = food.price;

                    return Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(189, 140, 94, 91)),
                      margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                      child: ListTile(
                        title: Text(
                          foodName,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(foodPrice,
                            style: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold)),
                        trailing: IconButton(
                          onPressed: () => removeFromCart(food, context),
                          icon: Icon(Icons.delete, color: Colors.grey.shade400),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: MyButton(
                  text: 'pay now',
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
