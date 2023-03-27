import 'package:flutter/material.dart';
import 'package:nuance/core/constants/constants.dart';


class CartListView extends StatelessWidget {
  const CartListView({
    Key? key,
    required this.cartimage,
    required this.cartProductName,
    required this.cartProductPrice,
  }) : super(key: key);

  final List<String>? cartimage;
  final List<String>? cartProductName;
  final List<int>? cartProductPrice;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => kHeight40,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            kWidth10,
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: kWhite, borderRadius: BorderRadius.circular(40)),
              child: Image.network(
                cartimage![index],
                fit: BoxFit.contain,
              ),
            ),
            kWidth10,
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cartProductName![index],
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: kBlack,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '₹ ${cartProductPrice![index]}',
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: kBlack,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              // mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete,
                      color: kBlack,
                    )),
                
              ],
            )
          ],
        );
      },
      itemCount: cartimage!.length,
    );
  }
}
