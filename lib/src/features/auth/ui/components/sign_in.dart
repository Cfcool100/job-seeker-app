import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lemon_app/src/features/auth/ui/components/input.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final TextEditingController mailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Input(
          controller: mailController,
          hint: 'Mail',
          icon: CupertinoIcons.mail,
        ),
        Input(
          controller: passController,
          icon: CupertinoIcons.lock,
          hint: 'Password',
          showTrailing: true,
          trailing: Icons.visibility_outlined,
          trailingTap: () {},
        ),
        TextButton(
          style: const ButtonStyle(
              visualDensity: VisualDensity.compact,
              padding: MaterialStatePropertyAll(EdgeInsets.zero)),
          onPressed: () {},
          child: Text(
            'Forgot Password ?',
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
