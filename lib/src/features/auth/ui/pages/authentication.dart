import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:lemon_app/src/core/widgets/primary_button.dart';
import 'package:lemon_app/src/features/auth/bloc/auth_bloc.dart';
import 'package:lemon_app/src/features/auth/ui/components/auth_components.dart';
import 'package:lemon_app/src/features/home/pages/home_page.dart';

class Authentication extends StatelessWidget {
  const Authentication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.sizeOf(context).height,
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: double.infinity),
                  const SizedBox(height: 12),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: const ShapeDecoration(
                      color: Color(0xFF0D332F),
                      image: DecorationImage(
                          image: AssetImage('images/lemon.png')),
                      shape: OvalBorder(),
                    ),
                  ),
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 12,
                    children: [
                      state.isLogScreen
                          ? Text(
                              'Hello Again 👋',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0,
                              ),
                            )
                          : Container(),
                      Text(
                        state.isLogScreen
                            ? "Welcome back, you've been missed"
                            : "Welcome to Lemon",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 0,
                        ),
                      )
                    ],
                  ),
                  Form(
                    child: state.isLogScreen ? SignInScreen() : SignUpScreen(),
                  ),
                  Column(
                    children: [
                      PrimaryButton(
                        label: state.isLogScreen ? 'LOGIN' : 'SIGNUP',
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MyHomePage(title: 'Welcome'),
                          ));
                        },
                      ),
                      const SizedBox(height: 12),
                      const Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: .5,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              'Or',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: .5,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * .15,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AutFeatButton(
                                  onTap: () {},
                                  child: Brand(
                                    Brands.google,
                                  ),
                                ),
                                AutFeatButton(
                                  onTap: () {},
                                  child: Brand(
                                    Brands.facebook,
                                  ),
                                ),
                                AutFeatButton(
                                  onTap: () {},
                                  child: const Icon(BoxIcons.bxl_apple),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Wrap(
                        children: [
                          Text(
                            state.isLogScreen
                                ? "Don't have an account?"
                                : "Have you already an account?",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              context
                                  .read<AuthBloc>()
                                  .add(ToggleAuthScreenEvent());
                            },
                            child: Text(
                              state.isLogScreen ? ' Sign Up' : " Sign In",
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                    ],
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class AutFeatButton extends StatelessWidget {
  const AutFeatButton({
    super.key,
    required this.child,
    required this.onTap,
  });

  final VoidCallback? onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 50,
        height: 50,
        margin: const EdgeInsets.only(left: 8),
        padding: const EdgeInsets.all(13),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          shape: BoxShape.circle,
        ),
        child: child,
      ),
    );
  }
}
