import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartavia_weather/generated/assets.dart';
import 'package:smartavia_weather/src/res/colors/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:smartavia_weather/src/ui/auth_screen/cubit/auth_cubit.dart';
import 'package:smartavia_weather/src/ui/auth_screen/uikit/auth_button.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _applocale = AppLocalizations.of(context)!;
    final _textTheme = Theme.of(context).textTheme;
    final _bloc = context.read<AuthCubit>();
    return BlocBuilder<AuthCubit, AuthState>(
      bloc: _bloc,
      builder: (context, state) => Scaffold(
        backgroundColor: AppColors.white,
        body: SafeArea(
          minimum: const EdgeInsets.only(
            left: 24,
            right: 24,
            top: 48,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _applocale.entry,
                style: _textTheme.headlineLarge,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 16),
                child: Text(
                  _applocale.insertDataToEntry,
                  style: _textTheme.bodyMedium?.copyWith(
                    color: AppColors.grey,
                  ),
                ),
              ),
              RawTextField(
                controller: emailController,
                textInputType: TextInputType.emailAddress,
                label: 'Email',
              ),
              const SizedBox(
                height: 8,
              ),
              RawTextField(
                controller: passController,
                obscure: _bloc.state.obscurePass,
                label: 'Пароль',
                action: InkWell(
                  onTap: _bloc.changePassVisibility,
                  child: SvgPicture.asset(
                    !_bloc.state.obscurePass
                        ? Assets.iconsEye
                        : Assets.iconsEyeoff,
                    color: AppColors.grape,
                  ),
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              AuthButton(
                isLoadingState:_bloc.state.isAuthorizing,
                onTap: () => _bloc.auth(
                  email: emailController.text,
                  context: context,
                  pass: passController.text,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RawTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final Widget? action;
  final bool? obscure;
  final TextInputType? textInputType;
  const RawTextField(
      {Key? key,
      required this.controller,
      required this.label,
      this.action,
      this.obscure,
      this.textInputType})
      : super(key: key);

  @override
  Widget build(BuildContext context) => TextField(
        controller: controller,
        keyboardType: textInputType,
        obscureText: obscure ?? false,
        decoration: InputDecoration(
            label: Text(
              label,
            ),
            suffix: action,
            focusColor: AppColors.grape),
      );
}
