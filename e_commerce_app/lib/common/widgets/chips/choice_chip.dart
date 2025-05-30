import 'package:e_commerce_app/common/widgets/custom_shapes/containers/circular_containar.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });
  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = HelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),

      child: ChoiceChip(
              label: isColor ?const  SizedBox() : Text(text),
              selected: selected,
              onSelected: onSelected,
              labelStyle: TextStyle(color: selected ? TColors.white : null),
              avatar:
      isColor
          ? CircularContainer(
            height: 50,
            width: 50,
            backgroundColor: HelperFunctions.getColor(text)!,
          )
          : null,
      
              shape: isColor ? const CircleBorder() : null,
              labelPadding: isColor ? EdgeInsets.all(0) : null,
              padding: isColor ? EdgeInsets.all(0) : null,
              backgroundColor: isColor ? HelperFunctions.getColor(text)! : null,
            ),
    );
  }
}
