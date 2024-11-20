import 'package:di_practrice/core/provider/post_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/service/service_locator.dart';
import 'core/view/post_view.dart';


void main() {
  setup(); // Set up GetIt
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PostProvider>(
          create: (context) => PostProvider(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'API ListView Demo',
        home: PostListScreen(),
      ),
    );
  }
}
