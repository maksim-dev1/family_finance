import 'package:family_finance/feature/auth/bloc/auth_bloc.dart';
import 'package:family_finance/feature/auth/domain/entities/auth_entity.dart';
import 'package:family_finance/feature/auth/presentation/screens/login_screen.dart';
import 'package:family_finance/feature/auth/presentation/screens/pin_code_screen.dart';
import 'package:family_finance/feature/auth/presentation/widgets/custom_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool isCheckPassword = false;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController replayPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                'Hello',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Text(
                  'Welcome To Finance Fanily!',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              CustomTextField(
                controller: emailController,
                prefixIcon: 'assets/auth/icons/email.svg',
                labelText: 'Enter Email',
              ),
              SizedBox(
                height: 18,
              ),
              CustomTextField(
                controller: nameController,
                prefixIcon: 'assets/auth/icons/user.svg',
                labelText: 'Enter Name',
              ),
              SizedBox(
                height: 18,
              ),
              // CustomTextField(
              //   controller: passwordController,
              //   prefixIcon: 'assets/auth/icons/lock.svg',
              //   labelText: 'Enter Password',
              //   suffixIcon: IconButton(
              //     onPressed: () {
              //       setState(() {
              //         if (isCheckPassword == false) {
              //           isCheckPassword = true;
              //         } else {
              //           isCheckPassword = false;
              //         }
              //       });
              //     },
              //     icon: isCheckPassword
              //         ? SvgPicture.asset(
              //             'assets/auth/icons/eye_open.svg',
              //             fit: BoxFit.scaleDown,
              //           )
              //         : SvgPicture.asset(
              //             'assets/auth/icons/eye_private.svg',
              //             fit: BoxFit.scaleDown,
              //           ),
              //   ),
              // ),
              // SizedBox(
              //   height: 18,
              // ),
              // CustomTextField(
              //   controller: replayPasswordController,
              //   prefixIcon: 'assets/auth/icons/lock.svg',
              //   labelText: 'Replay Password',
              //   suffixIcon: IconButton(
              //     onPressed: () {
              //       setState(() {
              //         if (isCheckPassword == false) {
              //           isCheckPassword = true;
              //         } else {
              //           isCheckPassword = false;
              //         }
              //       });
              //     },
              //     icon: isCheckPassword
              //         ? SvgPicture.asset(
              //             'assets/auth/icons/eye_open.svg',
              //             fit: BoxFit.scaleDown,
              //           )
              //         : SvgPicture.asset(
              //             'assets/auth/icons/eye_private.svg',
              //             fit: BoxFit.scaleDown,
              //           ),
              //   ),
              // ),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Theme.of(context).colorScheme.primary,
                    ),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {
                     context.read<AuthBloc>().add(
                                AuthEvent.registration(
                                  authRegisterRequest:
                                      AuthRegisterRequestEntity(
                                    name: nameController.text,
                                    email: emailController.text,
                                  ),
                                ),
                              );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PinCodeScreen(
                          email: emailController.text,
                        ),
                      ),
                    );
                  },
                  child: Text(
                    'Sign Up',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  text: 'Create A New Account? ',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                  children: [
                    TextSpan(
                      text: 'Sign In',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                    ),
                  ],
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
