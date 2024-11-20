import 'package:di_practrice/core/service/post_service.dart';
import 'package:get_it/get_it.dart';
import '../repository/post_repository.dart';


final GetIt getIt = GetIt.instance;

void setup() {
  // Register Services
  getIt.registerLazySingleton<PostService>(() => PostService());

  // Register Repositories (No need to pass PostService explicitly)
  getIt.registerLazySingleton<PostRepository>(() => PostRepository());
}