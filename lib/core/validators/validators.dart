class Validators {
  static String? notEmptyValidator({required String? value}) => value == null ||
          value == '' ||
          value == 'null' ||
          value.runtimeType != String ||
          value.isEmpty
      ? 'Campo obrigatório.'
      : null;

  static String? emailValidator({required String? email}) {
    final String? isEmailNull = notEmptyValidator(value: email);
    if (isEmailNull != null) return isEmailNull;
    const emailRegex =
        r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
    if (!RegExp(emailRegex).hasMatch(email!)) {
      return 'E-mail inválido.';
    } else {
      return null;
    }
  }

  static String? passwordValidator({required String? password}) {
    final String? isPasswordNull = notEmptyValidator(value: password);
    if (isPasswordNull != null) return isPasswordNull;
    if (password!.isEmpty) {
      return 'Campo obrigatório';
    } else if (password.length < 8) {
      return 'Senha deve conter ao menos 8 caracteres.';
    } else {
      return null;
    }
  }

  static String? confirmPasswordValidator({
    required String? password,
    required String? informedPassword,
  }) {
    final String? isPasswordNull = notEmptyValidator(value: password);
    if (isPasswordNull != null) return isPasswordNull;
    final String? isInformedPasswordNull =
        notEmptyValidator(value: informedPassword);
    if (isInformedPasswordNull != null) return isInformedPasswordNull;

    final String? isPasswordValid =
        Validators.passwordValidator(password: password);
    if (isPasswordValid != null) {
      return isPasswordValid;
    } else {
      return password == informedPassword ? null : 'Senhas não confirmadas.';
    }
  }
}
