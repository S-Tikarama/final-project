import 'package:flutter/material.dart';

class ProductPriceText extends StatelessWidget {
  const ProductPriceText({
    super.key,
    this.rupeeSign = "Rs",
    required this.price,
    this.maxLines = 1,
    this.islarge = false,
    this.lineThrough = false,
  });

  final String rupeeSign, price;
  final int maxLines;
  final bool islarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      rupeeSign +price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style:islarge ? Theme.of(context).textTheme.headlineMedium!.apply(decoration: lineThrough ? TextDecoration.lineThrough:null):Theme.of(context)
.textTheme.titleLarge!.apply(decoration: lineThrough ? TextDecoration.lineThrough:null),    );
  }
}
