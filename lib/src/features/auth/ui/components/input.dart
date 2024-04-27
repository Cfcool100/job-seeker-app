import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({
    super.key,
    this.trailing,
    this.trailingTap,
    this.showTrailing,
    required this.hint,
    required this.icon,
    required this.controller,
  });

  final String hint;
  final IconData icon;
  final bool? showTrailing;
  final IconData? trailing;
  final void Function()? trailingTap;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.black12,
      )),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.black,
            size: 20,
          ),
          border: InputBorder.none,
          hintText: hint,
          suffixIcon: showTrailing == true
              ? InkWell(
                  splashFactory: InkSparkle.splashFactory,
                  borderRadius: BorderRadius.circular(25),
                  onTap: trailingTap,
                  child: Icon(
                    trailing,
                    size: 20,
                    color: Colors.black,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
