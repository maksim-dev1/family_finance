import 'package:dio/dio.dart';
import 'package:family_finance/common/interceptors/auth_interceptor.dart';
import 'package:family_finance/common/interceptors/token_interceptor.dart';
import 'package:family_finance/common/utils/token_storage.dart';
import 'package:family_finance/feature/auth/bloc/auth_bloc.dart';
import 'package:family_finance/feature/auth/data/data_providers/auth_data_provider/api/auth_http_api.dart';
import 'package:family_finance/feature/auth/data/data_providers/auth_data_provider/implementations/auth_data_provider_impl.dart';
import 'package:family_finance/feature/auth/data/data_providers/auth_data_provider/interface/interfsce_auth_data_provider.dart';
import 'package:family_finance/feature/auth/data/repositories/implementation/auth_repository_impl.dart';
import 'package:family_finance/feature/auth/data/repositories/interface/interface_auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthProvider extends StatelessWidget {
  final Widget child;
  const AuthProvider({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<TokenStorage>(
      create: (context) => TokenStorage(),
      child: RepositoryProvider<Dio>(
        create: (context) {
          final tokenStorage = context.read<TokenStorage>();
          return Dio()
            ..options.baseUrl = 'http://31.207.198.113:8080'
            // ..options.baseUrl = String.fromEnvironment('BASE_URL')
            ..options.headers['Content-Type'] = 'application/json'
            ..interceptors.add(
              TokenInterceptor(
                tokenStorage: tokenStorage,
              ),
            );
        },
        child: RepositoryProvider<AuthHttpApi>(
          create: (context) => AuthHttpApi(
            context.read<Dio>(),
          ),
          child: RepositoryProvider<IAuthDataProvider>(
            create: (context) => AuthDataProviderImpl(
              authHttpApi: context.read<AuthHttpApi>(),
            ),
            child: RepositoryProvider<IAuthRepository>(
              create: (context) => AuthRepositoryImpl(
                authDataProvider: context.read<IAuthDataProvider>(),
              ),
              child: Builder(
                builder: (context) {
                  context.read<Dio>().interceptors.add(
                        AuthInterceptor(
                          authRepository: context.read<IAuthRepository>(),
                          tokenStorage: context.read<TokenStorage>(),
                        ),
                      );
                  return BlocProvider<AuthBloc>(
                    create: (context) => AuthBloc(
                      authRepository: context.read<IAuthRepository>(),
                      tokenStorage: context.read<TokenStorage>(),
                    )..add(
                      AuthEvent.checkAuth(),
                    ),
                    child: child,
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
