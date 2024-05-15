import 'package:cubit_example/cubit/post/post_cubit.dart';
import 'package:cubit_example/ui/page/post/widgets/post_list_widget.dart';
import 'package:cubit_example/widgets/loding_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../cubit/post/post_state.dart';


class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {

  @override
  void initState() {
    super.initState();
      context.read<PostCubit>().getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<PostCubit,PostState>(
        builder: (context,state){
         return state.when(
             loading: () => const LoadingWidget(),
             loaded: (posts) => PostsListWidget(posts: posts),
             error: (message) => Text(message),
         );
        },
      )
    );
  }
}
