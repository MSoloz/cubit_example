import 'package:flutter/material.dart';
import '../../../../model/post/post_model.dart';



class PostCardWidget extends StatelessWidget {
  final Post post;
  const PostCardWidget({Key? key,required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Container(
        padding:const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(post.title,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Colors.black,fontWeight: FontWeight.w400,
            ),), // na9sa
            const SizedBox(height: 10,),
            Text(post.body,style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: Colors.black54 , fontWeight: FontWeight.w300,
            ),),
          ],
        ),
      ),
    );
  }
}
