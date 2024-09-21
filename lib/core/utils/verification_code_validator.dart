String? verificationCodeValidator(String? code) =>
    code == null || int.tryParse(code) == null || code.length != 5
        ? "Неверный код"
        : null;
