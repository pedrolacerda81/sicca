import 'package:flutter_test/flutter_test.dart';
import 'package:sicca/core/validators/validators.dart';

main() {
  group('Validators Unit Test Group -->', () {
    test('If not empty validator is validating correctly', () {
      const String? nullValue = null;
      const String? emptyValue = '';
      const String? nullStringValue = 'null';
      const String? validString = 'Valid value';
      
      expect(Validators.notEmptyValidator(value: nullValue), 'Campo obrigatório.');
      expect(Validators.notEmptyValidator(value: emptyValue), 'Campo obrigatório.');
      expect(Validators.notEmptyValidator(value: nullStringValue), 'Campo obrigatório.');
      expect(Validators.notEmptyValidator(value: validString), null);
    });

    test('If email validator is validating correctly', () {
      const String? nullEmail = null;
      const String? emptyEmail = '';
      const String? invalidEmailOne = 'name@email';
      const String? invalidEmailTwo = 'name.com';
      const String? invalidEmailThree = 'name';
      const String? validEmail = 'name@email.com';

      expect(Validators.emailValidator(email: nullEmail), 'Campo obrigatório.');
      expect(Validators.emailValidator(email: emptyEmail), 'Campo obrigatório.');
      expect(Validators.emailValidator(email: invalidEmailOne), 'E-mail inválido.');
      expect(Validators.emailValidator(email: invalidEmailTwo), 'E-mail inválido.');
      expect(Validators.emailValidator(email: invalidEmailThree), 'E-mail inválido.');
      expect(Validators.emailValidator(email: validEmail), null);
    });

    test('If the password validator is validating correctly', () {
      const String? nullPassword = null;
      const String? emptyPassword = '';
      const String? invalidPassword = '1234';
      const String? validPassword = '12345678';

      expect(Validators.passwordValidator(password: nullPassword), 'Campo obrigatório.');
      expect(Validators.passwordValidator(password: emptyPassword), 'Campo obrigatório.');
      expect(Validators.passwordValidator(password: invalidPassword), 'Senha deve conter ao menos 8 caracteres.');
      expect(Validators.passwordValidator(password: validPassword), null);
    });

    test('If the confirm password validator is validating correctly', () {
      const String? validPassword = '12345678';

      const String? nullConfirmPassword = null;
      const String? emptyConfirmPassword = '';
      const String? invalidConfirmPassword = '1234';
      const String? validConfirmPassword = '12345678';
      const String? differentConfirmPassword = '123456789';

      expect(Validators.confirmPasswordValidator(password: validPassword, informedPassword: nullConfirmPassword), 'Campo obrigatório.');
      expect(Validators.confirmPasswordValidator(password: validPassword, informedPassword: emptyConfirmPassword), 'Campo obrigatório.');
      expect(Validators.confirmPasswordValidator(password: validPassword, informedPassword: invalidConfirmPassword), 'Senhas não confirmadas.');
      expect(Validators.confirmPasswordValidator(password: validPassword, informedPassword: differentConfirmPassword), 'Senhas não confirmadas.');
      expect(Validators.confirmPasswordValidator(password: validPassword, informedPassword: validConfirmPassword), null);
    });
  });
}