import 'package:flutter/material.dart';
import 'package:nuance/presentation/screens/productview/productview.dart';

class ItemWidget extends StatelessWidget {
  ItemWidget({Key? key}) : super(key: key);

  final List<String>? imageurl = [
    'https://rukminim1.flixcart.com/image/416/416/k73nlow0/headphone/h/9/z/boat-rockerz-370-original-imafpef5cszgwxmx.jpeg?q=70',
    'https://rukminim1.flixcart.com/image/416/416/k7285u80/headphone/4/3/u/boat-rockerz-370-original-imafpdzhywghfabu.jpeg?q=70',
    'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcTNrUDtvxQURbBLkLTpu7TSai0nLRbdC7bslPb3-9k4IZQe7D4Xp-3t6Q90loYrN5esd4Xqkz2j-Enf&usqp=CAc',
    'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTJ9a8iWTtjV-QK7MlRgDiLd2GM-jR0dVJVJMrfXSyHcR8i8p-x0kBWlVw5WFPoEqfrBC-waEuZwQ&usqp=CAc',
    'https://rukminim1.flixcart.com/image/416/416/k73nlow0/headphone/h/9/z/boat-rockerz-370-original-imafpef5cszgwxmx.jpeg?q=70',
    'https://rukminim1.flixcart.com/image/416/416/k7285u80/headphone/4/3/u/boat-rockerz-370-original-imafpdzhywghfabu.jpeg?q=70',
    'https://rukminim1.flixcart.com/image/416/416/kmccosw0/headphone/9/h/j/rockerz-450-pro-boat-original-imagf9gyd4u6w85z.jpeg?q=70',
    'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTJ9a8iWTtjV-QK7MlRgDiLd2GM-jR0dVJVJMrfXSyHcR8i8p-x0kBWlVw5WFPoEqfrBC-waEuZwQ&usqp=CAc',
    
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: imageurl!.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.80,
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 1.0,
      ),
      itemBuilder: (context, index) {
        //   for (int i = 0; i < 10; i++)
        return GestureDetector(
          onTap: () {
             Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const ProductView() ) );
          },
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
                color:  const Color.fromARGB(255, 247, 247, 247), borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                      ),
                    ),
                    // Icon(
                    //   Icons.add_shopping_cart,
                    //   color: Colors.black,
                    // ),
                  ],
                ),
                Container(
                  //margin: EdgeInsets.all(10),
                  child: Image.network(
                    imageurl![index].toString(),
                    width: 100,
                    height: 100,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Boat Rockers",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "₹1,999",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      // childAspectRatio: 0.80,
      physics: const NeverScrollableScrollPhysics(),
      // crossAxisCount: 2,
      shrinkWrap: true,
      // children: [],
    );
  }
}
