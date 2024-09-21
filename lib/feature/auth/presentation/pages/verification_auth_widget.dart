import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mind_map/core/constant_values/routes.dart';
import 'package:mind_map/core/presentation/UI/garden_loading_widget.dart';
import 'package:mind_map/core/presentation/UI/snack_message.dart';
import 'package:mind_map/core/presentation/button_widget.dart';
import 'package:mind_map/core/presentation/garden_input_text_field_style.dart';
import 'package:mind_map/core/presentation/label/garden_aligned_label_widget.dart';
import 'package:mind_map/core/presentation/label/garden_colored_label_widget.dart';
import 'package:mind_map/core/presentation/label/garden_weighted_label_widget.dart';
import 'package:mind_map/core/utils/verification_code_validator.dart';
import 'package:mind_map/feature/auth/data/models/security_request_model.dart';
import 'package:mind_map/feature/auth/presentation/bloc/bloc/auth_bloc.dart';
import 'package:mind_map/feature/auth/presentation/widgets/auth_app_bar_widget.dart';
import 'package:mind_map/injection_container.dart';

class VerificationAuthPage extends StatefulWidget {
  final String email;
  const VerificationAuthPage({super.key, required this.email});

  @override
  State<VerificationAuthPage> createState() => _VerificationAuthPageState();
}

class _VerificationAuthPageState extends State<VerificationAuthPage> {
  final controller = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 241, 245),
      appBar: const AuthAppBarWidget(),
      body: buildBody(),
    );
  }

  BlocProvider<AuthBloc> buildBody() {
    return BlocProvider(
      create: (context) => sl<AuthBloc>(),
      child: _BodyWidget(
        formKey: formKey,
        widget: widget,
        controller: controller,
      ),
    );
  }
}

class _BodyWidget extends StatelessWidget {
  const _BodyWidget({
    required this.formKey,
    required this.widget,
    required this.controller,
  });

  final GlobalKey<FormState> formKey;
  final VerificationAuthPage widget;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final authBloc = context.watch<AuthBloc>();

    return authBloc.state.when(
      initial: () => VerificationWidet(
        formKey: formKey,
        widget: widget,
        controller: controller,
        errorMessage: "",
      ),
      authSuccess: (token) {
        Navigator.of(context).pushReplacementNamed(mainRoute);
        return Container();
      },
      authLoading: () => const Center(
        child: GardenLoadingWidget(),
      ),
      authFail: (message) => VerificationWidet(
        formKey: formKey,
        widget: widget,
        controller: controller,
        errorMessage: message,
      ),
    );
  }
}

class VerificationWidet extends StatelessWidget {
  const VerificationWidet({
    super.key,
    required this.formKey,
    required this.widget,
    required this.controller,
    required this.errorMessage,
  });

  final GlobalKey<FormState> formKey;
  final VerificationAuthPage widget;
  final TextEditingController controller;
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    if (errorMessage.isNotEmpty) snackMessage(context, errorMessage);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _VerificationInfoWidget(widget: widget),
            const SizedBox(
              height: 17,
            ),
            _VerificationCodeInputWidget(controller: controller),
            const SizedBox(
              height: 23,
            ),
            _ButtonContainerWidget(formKey: formKey),
          ],
        ),
      ),
    );
  }
}

class _ButtonContainerWidget extends StatelessWidget {
  const _ButtonContainerWidget({
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GardenButton(
          title: "Получить код повторно",
          event: () {
            //Повторный запрос с емейлом
          },
        ),
        const SizedBox(
          height: 17,
        ),
        GardenButton(
          title: "Подтвердить",
          event: () {
            final form = formKey.currentState!;
            if (form.validate()) {
              final bloc = context.read<AuthBloc>();
              bloc.add(
                const AuthEvent.auth(
                  authRequest: SecurityRequestModel(
                    email: "test@test.ru",
                    password: "Test-22222",
                    roleName: "admin",
                  ),
                ),
              );
            }
          },
        ),
      ],
    );
  }
}

class _VerificationCodeInputWidget extends StatelessWidget {
  const _VerificationCodeInputWidget({
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: controller,
          decoration: gardenInputStyle,
          keyboardType: TextInputType.number,
          autofillHints: const [AutofillHints.oneTimeCode],
          validator: verificationCodeValidator,
        ),
        const SizedBox(
          height: 5,
        ),
        //TODO: Сделать каунтдаун на 2 минуты

        const GardenColoredLabelWidget(
          text: "Повторно код можно получить через",
          fontSize: 20,
          color: Color.fromARGB(160, 101, 59, 159),
        ),
      ],
    );
  }
}

class _VerificationInfoWidget extends StatelessWidget {
  const _VerificationInfoWidget({
    required this.widget,
  });

  final VerificationAuthPage widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GardenWeightedLabelWidget(
          text: widget.email,
          fontSize: 20,
          weight: FontWeight.bold,
        ),
        const SizedBox(
          height: 32,
        ),
        const GardenAlignedLabelWidget(
          text:
              "На почту был отправлен код из N цифр. Введите в поле ниже код из письма:",
          fontSize: 18,
          align: TextAlign.center,
        ),
      ],
    );
  }
}
