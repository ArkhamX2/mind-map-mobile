import 'package:flutter/material.dart';
import 'package:mind_map/core/presentation/button_widget.dart';
import 'package:mind_map/core/presentation/mind_input_text_field_style.dart';
import 'package:mind_map/core/presentation/label/mind_default_label_widget.dart';
import 'package:mind_map/core/utils/email_validator.dart';
import 'package:mind_map/feature/auth/presentation/pages/verification_auth_widget.dart';
import 'package:mind_map/feature/auth/presentation/widgets/auth_app_bar_widget.dart';
import 'package:mind_map/resources/colors.dart';

class EmailAuthPage extends StatefulWidget {
  const EmailAuthPage({super.key});

  @override
  State<EmailAuthPage> createState() => _EmailAuthPageState();
}

class _EmailAuthPageState extends State<EmailAuthPage> {
  final _emailTextController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBackgroundColor,
      appBar: const AuthAppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: _EmailEnterFormWidget(
          formKey: formKey,
          emailTextController: _emailTextController,
        ),
      ),
    );
  }
}

class _EmailEnterFormWidget extends StatelessWidget {
  const _EmailEnterFormWidget({
    required this.formKey,
    required TextEditingController emailTextController,
  }) : _emailTextController = emailTextController;

  final GlobalKey<FormState> formKey;
  final TextEditingController _emailTextController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const MindDefaultLabelWidget(
            text: "Введите свой email:",
            fontSize: 20,
          ),
          const SizedBox(
            height: 23,
          ),
          _EmailFieldWidget(controller: _emailTextController),
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
                  final email = _emailTextController.text;
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (context) => VerificationAuthPage(email: email),
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
