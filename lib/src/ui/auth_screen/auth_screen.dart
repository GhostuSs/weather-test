import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartavia_weather/generated/assets.dart';
import 'package:smartavia_weather/src/res/colors/app_colors.dart';
import 'package:smartavia_weather/src/ui/auth_screen/cubit/auth_cubit.dart';
import 'package:smartavia_weather/src/ui/auth_screen/uikit/auth_button.dart';
import 'package:smartavia_weather/src/ui/auth_screen/uikit/raw_textfield.dart';

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
                onValidate: (v) =>
                    _bloc.checkEmail(email: emailController.text),
                textInputType: TextInputType.emailAddress,
                label: _applocale.email,
                errorText: _bloc.state.emailError?.isNotEmpty == true
                    ? _bloc.state.emailError
                    : null,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 48),
                child: RawTextField(
                  controller: passController,
                  obscure: _bloc.state.obscurePass,
                  onValidate: (v) => _bloc.checkPass(pass: passController.text),
                  label: _applocale.password,
                  errorText: _bloc.state.passError?.isNotEmpty == true
                      ? _bloc.state.passError
                      : null,
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
              ),
              AuthButton(
                isLoadingState: _bloc.state.isAuthorizing,
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
