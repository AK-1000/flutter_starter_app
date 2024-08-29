import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starter_app/app/colors.dart';
import 'package:starter_app/app/constants.dart';
import 'package:starter_app/core/validators/validators.dart';
import 'package:starter_app/presentation/controllers/auth_controllers/sign_up_controller.dart';
import 'package:starter_app/presentation/widgets/app_bars/custom_sliver_app_bar.dart';
import 'package:starter_app/presentation/widgets/buttons/app_button.dart';
import 'package:starter_app/presentation/widgets/loading_indicators/simple_loading_indicator.dart';
import 'package:starter_app/presentation/widgets/text_fields/app_text_field.dart';
import 'package:starter_app/presentation/widgets/text_fields/phone_text_field.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  final SignUpController controller = Get.put<SignUpController>(
    SignUpController(
      validators: Get.find<FormValidators>(),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        children: [
          SafeArea(
            child: CustomScrollView(
              slivers: [
                CustomSliverAppBar(
                  backgroundColor: darkBlue,
                  title: 'Sign Up',
                  centerTitle: true,
                  backAllowed: true,
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
                          controller: controller.nameController,
                          hintText: 'Name',
                        ),
                        SizedBox(
                          height: oneH(context),
                        ),
                        AppTextField(
                          controller: controller.emailController,
                          hintText: 'Email',
                        ),
                        SizedBox(
                          height: oneH(context),
                        ),
                        PhoneTextField(
                          controller: controller.phoneController,
                          hintText: 'Phone'
                        ),
                        SizedBox(height: oneH(context),),
                        AppTextField(
                          controller: controller.passwordController,
                          hintText: 'Password',
                          isPassword: true,
                        ),
                        SizedBox(
                          height: oneH(context),
                        ),
                        AppTextField(
                          controller: controller.confirmController,
                          hintText: 'Confirm Password',
                          isPassword: true,
                        ),
                        SizedBox(
                          height: oneH(context),
                        ),
                        AppButton(
                          title: 'Sign up',
                          onPressed: () {
                            controller.signUp();
                          },
                        ),
                        SizedBox(
                          height: oneH(context) * 5,
                        ),
                        
                      ],
                    ),
                  ),
                ),
              ],
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
          )
        ],
      ),
    );
  }
}
