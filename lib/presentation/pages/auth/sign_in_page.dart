import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starter_app/app/colors.dart';
import 'package:starter_app/app/constants.dart';
import 'package:starter_app/app/routes.dart';
import 'package:starter_app/core/helpers/dialogs.dart';
import 'package:starter_app/core/validators/validators.dart';
import 'package:starter_app/presentation/controllers/auth_controllers/sign_in_controller.dart';
import 'package:starter_app/presentation/widgets/app_bars/custom_sliver_app_bar.dart';
import 'package:starter_app/presentation/widgets/buttons/app_button.dart';
import 'package:starter_app/presentation/widgets/loading_indicators/simple_loading_indicator.dart';
import 'package:starter_app/presentation/widgets/text_fields/app_text_field.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});
  final SignInController controller = Get.put<SignInController>(
    SignInController(
      validators: Get.find<FormValidators>(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) => exitDialog(),
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Stack(
          children: [
            SafeArea(
              child: CustomScrollView(
                slivers: [
                  CustomSliverAppBar(
                    backgroundColor: darkBlue,
                    title: 'Sign In',
                    centerTitle: true,
                    pinned: false,
                    backButtonColor: white,
                    titleStyle: const TextStyle(color: Colors.white),
                  ),
                  SliverPadding(
                    padding: EdgeInsets.symmetric(
                      horizontal: oneW(context) * 5,
                      vertical: oneH(context) * 3,
                    ),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          AppTextField(
                            controller: controller.emailController,
                            hintText: 'Email',
                          ),
                          SizedBox(
                            height: oneH(context),
                          ),
                          AppTextField(
                            controller: controller.passwordController,
                            hintText: 'Password',
                            isPassword: true,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'Forgot password',
                                style: TextStyle(
                                  color: linkColor,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: oneH(context) * 2,
                          ),
                          AppButton(
                            title: 'Sign in',
                            onPressed: () {
                              //controller.signIn();
                              Get.toNamed(Routes.home);
                            },
                          ),
                          SizedBox(
                            height: oneH(context) * 5,
                          ),
                          // Align(
                          //   alignment: Alignment.center,
                          //   child: RichText(
                          //     text: TextSpan(
                          //       text: 'Don\'t have an account? ',
                          //       style: TextStyle(color: primaryColor),
                          //       children: [
                          //         TextSpan(
                          //           text: 'Sign up',
                          //           style: TextStyle(color: linkColor),
                          //           recognizer: TapGestureRecognizer()
                          //             ..onTap = () => Get.toNamed(Routes.signUp),
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: oneH(context) * 5,
              left: oneW(context) * 5,
              right: oneW(context) * 5,
              child: Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account? ',
                    style: TextStyle(color: primaryColor),
                    children: [
                      TextSpan(
                        text: 'Sign up',
                        style: TextStyle(color: linkColor),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.toNamed(Routes.signUp),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Obx(
              () => controller.isLoading
                  ? Stack(
                      children: [
                        const LoadingIndicator(),
                        Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            onPressed: () {
                              controller.setLoading(false);
                            },
                            icon: const Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    )
                  : const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
