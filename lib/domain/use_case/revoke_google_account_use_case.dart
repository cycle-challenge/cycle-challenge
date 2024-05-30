import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:yeohaeng_ttukttak/data/repositories/auth_repository.dart';
import 'package:yeohaeng_ttukttak/utils/result.dart';

class DeleteGoogleAccountUseCase {
  final appAuth = const FlutterAppAuth();
  final AuthRepository authRepository;

  DeleteGoogleAccountUseCase(this.authRepository);

  Future<Result<void, String>> call() async {
    final result = await authRepository.deleteAccount();

    return result.when(
        success: (_) => const Result.success(null),
        error: (error) => error.maybeWhen(
            error: (_, message) => Result.error(message),
            orElse: () => const Result.error('알 수 없는 오류가 발생했습니다.')));
  }
}
