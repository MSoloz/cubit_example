import 'package:cubit_example/ui/page/post/widgets/post_card_widget.dart';
import 'package:flutter/material.dart';
import '../../../../model/post/post_model.dart';


class PostsListWidget extends StatelessWidget {
  final List<Post> posts;
  const PostsListWidget({Key? key, required this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context,index){
          return PostCardWidget(post: posts[index]);
        }
    );
  }
}
