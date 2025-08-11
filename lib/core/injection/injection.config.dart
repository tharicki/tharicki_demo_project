// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:tharicki_demo_project/core/services/dio_client.dart' as _i643;
import 'package:tharicki_demo_project/feed/data/datasource/feed_remote_datasource.dart'
    as _i1063;
import 'package:tharicki_demo_project/feed/data/repositories/feed_repository_impl.dart'
    as _i736;
import 'package:tharicki_demo_project/feed/domain/repository/feed_repository.dart'
    as _i1015;
import 'package:tharicki_demo_project/feed/presentation/cubit/feed_cubit.dart'
    as _i522;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i522.FeedCubit>(() => _i522.FeedCubit());
    gh.factory<_i1063.FeedRemoteDatasource>(
        () => _i1063.FeedRemoteDatasourceImpl());
    gh.lazySingleton<_i643.DioClient>(
        () => _i643.DioClient(baseUrl: gh<String>()));
    gh.factory<_i1015.FeedRepository>(() => _i736.FeedRepositoryImpl(
        remoteDataSource: gh<_i1063.FeedRemoteDatasource>()));
    return this;
  }
}
