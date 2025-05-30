
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class RatingAndShare extends StatelessWidget {
  const RatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          //Reting
          children: [
            Icon(Icons.star,color: Colors.amber,size: 24,),
            SizedBox(width: TSizes.spaceBtnItems / 2),
            Text.rich(TextSpan(children: [
              TextSpan(text: '5.0',style: Theme.of(context).textTheme.bodyLarge),
              const TextSpan(text: "(100)")
            ])),
          ],
        ),
        //Share Button
        IconButton(onPressed: (){}, icon: Icon(Icons.share,size: TSizes.iconMd,))
      ],
    );
  }
}
