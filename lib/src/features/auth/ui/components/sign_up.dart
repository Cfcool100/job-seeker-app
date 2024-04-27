import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lemon_app/src/features/auth/ui/components/input.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController mailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController confirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      // mainAxisSize: MainAxisSize.min,
      children: [
        Input(
          controller: mailController,
          hint: 'Full name',
          icon: CupertinoIcons.person,
        ),
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
        Input(
          controller: passController,
          icon: CupertinoIcons.lock,
          hint: 'Confirm Password',
          showTrailing: true,
          trailing: Icons.visibility_outlined,
          trailingTap: () {},
        ),
        // TextButton(
        //   style: const ButtonStyle(
        //       visualDensity: VisualDensity.compact,
        //       padding: MaterialStatePropertyAll(EdgeInsets.zero)),
        //   onPressed: () {},
        //   child: Text(
        //     'Forgot Password ?',
        //     style: GoogleFonts.poppins(
        //       color: Colors.black,
        //       fontWeight: FontWeight.w400,
        //       fontSize: 12,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
