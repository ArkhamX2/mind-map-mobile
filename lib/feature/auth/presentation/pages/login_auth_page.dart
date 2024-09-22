import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mind_map/core/presentation/UI/mind_loading_widget.dart';
import 'package:mind_map/core/presentation/button_widget.dart';
import 'package:mind_map/core/presentation/mind_input_text_field_style.dart';
import 'package:mind_map/core/presentation/label/mind_default_label_widget.dart';
import 'package:mind_map/core/utils/email_validator.dart';
import 'package:mind_map/feature/auth/data/models/security_request_model.dart';
import 'package:mind_map/feature/auth/presentation/bloc/bloc/auth_bloc.dart';
import 'package:mind_map/feature/auth/presentation/widgets/auth_app_bar_widget.dart';
import 'package:mind_map/resources/colors.dart';

class LoginAuthPage extends StatefulWidget {
  const LoginAuthPage({super.key, required this.route});

  final String route;

  @override
  State<LoginAuthPage> createState() => _LoginAuthPageState();
}

class _LoginAuthPageState extends State<LoginAuthPage> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authBloc = context.watch<AuthBloc>();
    return Scaffold(
      backgroundColor: mainBackgroundColor,
      appBar: const AuthAppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: authBloc.state.when(
          initial: () => _FormWidget(
            formKey: formKey,
            emailTextController: emailTextController,
            passwordTextController: passwordTextController,
          ),
          authSuccess: (success) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Navigator.of(context).pushReplacementNamed(widget.route);
            });
            return Container(); // Return an empty container to avoid return null.
          },
          authLoading: () => const Center(
            child: MindLoadingWidget(),
          ),
          authFail: (message) => _FormWidget(
            formKey: formKey,
            emailTextController: emailTextController,
            passwordTextController: passwordTextController,
          ),
        ),
      ),
    );
  }
}

class _FormWidget extends StatelessWidget {
  const _FormWidget({
    required this.formKey,
    required this.emailTextController,
    required this.passwordTextController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailTextController;
  final TextEditingController passwordTextController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const MindDefaultLabelWidget(
            text: "Еmail:",
            fontSize: 20,
          ),
          const SizedBox(
            height: 23,
          ),
          _EmailFieldWidget(controller: emailTextController),
          const SizedBox(
            height: 23,
          ),
          const MindDefaultLabelWidget(
            text: "Пароль:",
            fontSize: 20,
          ),
          const SizedBox(
            height: 23,
          ),
          _PasswordFieldWidget(controller: passwordTextController),
          const SizedBox(
            height: 23,
          ),
          Center(
            child: MindButton(
              title: "Подтвердить",
              event: () {
                //TODO: Get the code
                final form = formKey.currentState!;
                if (form.validate()) {
                  final email = emailTextController.text;
                  final password = passwordTextController.text;
                  final authBloc = context.read<AuthBloc>();
                  authBloc.add(
                    AuthEvent.auth(
                      authRequest: SecurityRequestModel(
                        email: email,
                        password: password,
                        roleName: "admin",
                      ),
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _EmailFieldWidget extends StatefulWidget {
  final TextEditingController controller;

  const _EmailFieldWidget({
    required this.controller,
  });

  @override
  State<_EmailFieldWidget> createState() => _EmailFieldWidgetState();
}

class _EmailFieldWidgetState extends State<_EmailFieldWidget> {
  @override
  void initState() {
    super.initState();

    widget.controller.addListener(onListen);
  }

  @override
  void dispose() {
    widget.controller.removeListener(onListen);
    super.dispose();
  }

  void onListen() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: mindInputStyle,
      keyboardType: TextInputType.emailAddress,
      autofillHints: const [AutofillHints.email],
      validator: gardenEmailValidator,
    );
  }
}

class _PasswordFieldWidget extends StatefulWidget {
  final TextEditingController controller;

  const _PasswordFieldWidget({
    required this.controller,
  });

  @override
  State<_PasswordFieldWidget> createState() => _PasswordFieldWidgetState();
}

class _PasswordFieldWidgetState extends State<_PasswordFieldWidget> {
  @override
  void initState() {
    super.initState();

    widget.controller.addListener(onListen);
  }

  @override
  void dispose() {
    widget.controller.removeListener(onListen);
    super.dispose();
  }

  void onListen() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: mindInputStyle,
      keyboardType: TextInputType.emailAddress,
      autofillHints: const [AutofillHints.password],
    );
  }
}
