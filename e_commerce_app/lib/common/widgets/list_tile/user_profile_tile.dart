
import 'package:e_commerce_app/common/widgets/images/circular_image.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircularImage(
        image: TImage.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        "Tikaram Subedi",
        style: Theme.of(
          context,
        ).textTheme.headlineMedium!.apply(color: TColors.white),
      ),
      subtitle: Text(
        "tikaramasubedi@gmail.com",
        style: Theme.of(
          context,
        ).textTheme.bodyMedium!.apply(color: TColors.white),
      ),
      trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.edit, color: TColors.white,)),
    
    );
  }
}
