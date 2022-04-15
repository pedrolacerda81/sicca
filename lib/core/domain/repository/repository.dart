// ignore: avoid_classes_with_only_static_members
class Repository {
  static String defaultErrorMessage({
    required int statusCode,
    String? errorMessage400,
    String? errorMessage401,
    String? errorMessage403,
    String? errorMessage404,
    String? errorMessage405,
    String? errorMessage500,
    String? errorMessage503,
  }) {
    switch (statusCode) {
      case 400:
        return errorMessage400 ?? 'Desculpe, ocorreu um erro ao enviar.';
      case 401:
        return errorMessage401 ?? 'Desculpe, ocorreu um erro ao enviar.';
      case 403:
        return errorMessage403 ?? 'Desculpe, ocorreu um erro ao enviar.';
      case 404:
        return errorMessage404 ?? 'Desculpe, ocorreu um erro ao enviar.';
      case 405:
        return errorMessage405 ?? 'Método não permitido.';
      case 500:
        return errorMessage500 ??
            'Desculpe, o serviço está temporariamente indisponível.';
      case 503:
        return errorMessage503 ??
            'Desculpe, o serviço está temporariamente indisponível.';
      default:
        return 'Desculpe, ocorreu um erro inesperado.';
    }
  }
}
