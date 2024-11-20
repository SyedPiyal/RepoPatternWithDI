import 'package:flutter/foundation.dart';
import '../model/post_model.dart';
import '../repository/post_repository.dart';
import 'package:get_it/get_it.dart';


class PostProvider with ChangeNotifier {
  // Get PostRepository directly from GetIt
  final PostRepository postRepository = GetIt.instance<PostRepository>();

  List<Post> _posts = [];
  List<Post> get posts => _posts;

  Future<void> fetchPosts() async {
    try {
      _posts = await postRepository.getPosts();
      notifyListeners();
    } catch (e) {
      throw Exception('Failed to load posts');
    }
  }
}
