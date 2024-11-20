import '../model/post_model.dart';
import '../service/post_service.dart';
import 'package:get_it/get_it.dart';


class PostRepository {
  // Get the instance of PostService directly from GetIt
  final PostService postService = GetIt.instance<PostService>();

  // No need to pass PostService in the constructor now
  Future<List<Post>> getPosts() async {
    return await postService.fetchPosts();
  }
}
