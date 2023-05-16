import 'package:flutter/material.dart';

class CardedContainer extends StatefulWidget {
  const CardedContainer({
    super.key,
    this.blurRadius = 5,
    this.spreadRadius = 0.0,
    this.shadowColor,
    this.blurStyle = BlurStyle.normal,
    this.shadowOffset = Offset.zero,
    this.borderRadius,
    this.alignment,
    this.padding,
    this.foregroundDecoration,
    this.width,
    this.height,
    this.color,
    this.constraints,
    this.margin,
    this.transform,
    this.transformAlignment,
    this.child,
    this.clipBehavior = Clip.none,
  });

  final Color? shadowColor;
  final double blurRadius;
  final BlurStyle blurStyle;
  final Offset shadowOffset;
  final double spreadRadius;

  final double? height;
  final double? width;
  final Color? color;
  final Widget? child;
  final BorderRadiusGeometry? borderRadius;
  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? padding;
  final Decoration? foregroundDecoration;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? margin;
  final Matrix4? transform;
  final AlignmentGeometry? transformAlignment;
  final Clip clipBehavior;

  @override
  State<CardedContainer> createState() => _CardedContainerState();
}

class _CardedContainerState extends State<CardedContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      alignment: widget.alignment,
      decoration: BoxDecoration(
        borderRadius: widget.borderRadius,
        boxShadow: [
          BoxShadow(
            color: widget.shadowColor ?? Colors.grey.withOpacity(0.5),
            blurRadius: widget.blurRadius,
            blurStyle: widget.blurStyle,
            offset: widget.shadowOffset,
            spreadRadius: widget.spreadRadius,
          ),
        ],
      ),
      clipBehavior: widget.clipBehavior,
      color: widget.color,
      constraints: widget.constraints,
      foregroundDecoration: widget.foregroundDecoration,
      key: widget.key,
      margin: widget.margin,
      padding: widget.padding,
      transform: widget.transform,
      transformAlignment: widget.transformAlignment,
      child: widget.child,
    );
  }
}
