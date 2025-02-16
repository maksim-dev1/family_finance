import 'package:family_finance/app.dart';
import 'package:family_finance/feature/auth/bloc/auth_bloc.dart';
import 'package:family_finance/feature/auth/domain/entities/auth_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';

class PinCodeScreen extends StatelessWidget {
  final String email;

  PinCodeScreen({
    super.key,
    required this.email,
  });

  final TextEditingController pinController = TextEditingController();

  final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            children: [
              Spacer(),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Enter The Code',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Pinput(
                length: 6,
                autofocus: true,
                pinAnimationType: PinAnimationType.fade,
                controller: pinController,
                focusNode: focusNode,
                defaultPinTheme: PinTheme(
                  width: 60,
                  height: 80,
                  textStyle: Theme.of(context).textTheme.displayLarge?.copyWith(
                        fontWeight: FontWeight.w100,
                      ),
                ),
                submittedPinTheme: PinTheme(
                  width: 60,
                  height: 80,
                  textStyle: Theme.of(context).textTheme.displayLarge?.copyWith(
                        fontWeight: FontWeight.w100,
                      ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Theme.of(context).colorScheme.onSurface,
                        width: 3,
                      ),
                    ),
                  ),
                ),
                showCursor: true,
                cursor: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 56,
                      height: 3,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.onSurface,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ],
                ),
                preFilledWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 56,
                      height: 3,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ],
                ),
                separatorBuilder: (index) => SizedBox(width: 28),
              ),
              SizedBox(
                height: 70,
              ),
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
                          AuthEvent.verify(
                            authVerifeRequest: AuthVerifeRequestEntity(
                              email: email,
                              code: pinController.text,
                            ),
                          ),
                        );

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AppAuth(),
                      ),
                    );
                  },
                  child: Text(
                    'Next',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                  ),
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
