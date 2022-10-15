import 'package:api/PostViews.dart';
import 'package:api/posts_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PostsCubits>(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PostViews(),
      ),
      create: (context) => PostsCubits()..Psosts,
    );
  }
}

