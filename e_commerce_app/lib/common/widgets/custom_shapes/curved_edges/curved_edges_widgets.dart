
import 'package:e_commerce_app/common/widgets/custom_shapes/curved_edges/curve_edges.dart';
import 'package:flutter/material.dart';

class CurvedEdgeWidget extends StatelessWidget {
  const CurvedEdgeWidget({
    super.key, required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper:CustomCurvedEdges() ,
      child: child,
    );
  }
}
