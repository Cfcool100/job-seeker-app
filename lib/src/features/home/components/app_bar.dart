import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    centerTitle: false,
    backgroundColor: Theme.of(context).colorScheme.surface,
    title: Text(
      'Home',
      style: GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
    automaticallyImplyLeading: false,
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 18.0),
        child: Row(
          children: [
            Container(
              height: 35,
              width: 38,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(4)),
              child: SvgPicture.asset('images/Calendar.svg'),
            ),
            const SizedBox(width: 3),
            Container(
              height: 35,
              width: 38,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(4)),
              child: SvgPicture.asset('images/Notification.svg'),
            ),
          ],
        ),
      )
    ],
  );
}
