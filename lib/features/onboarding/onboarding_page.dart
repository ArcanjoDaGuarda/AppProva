import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:app_financy/common/constants/app_colors.dart';
import 'package:app_financy/common/constants/app_text_styles.dart';
import 'package:app_financy/common/widgets/primary_button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset('assets/images/gatoInicio.png'),
            ),
            Text(
              'Quer ter ganhos Incriveis?',
              style: AppTextStyles.mediumText.copyWith(
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            Text(
              '!!!LUCRO SEM FIM!!!',
              style: AppTextStyles.mediumText.copyWith(
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: PrimaryButton(
                text: 'Começar de GRAÇA',
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                backgroundColor: Colors.amber,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 0,
                right: 0,
                top: 0,
                bottom: 16.0,
              ),
              child: CustomTextButton(),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => log('message'),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Já é um investidor? ',
            style: AppTextStyles.smallText.copyWith(
              color: AppColors.grey,
            ),
          ),
          Text(
            'Logar',
            style: AppTextStyles.smallText.copyWith(
              color: AppColors.purple,
            ),
          ),
        ],
      ),
    );
  }
}
