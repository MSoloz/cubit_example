import 'package:cubit_example/cubit/post/post_state.dart';
import 'package:cubit_example/resource/post_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../model/post/post_model.dart';


class PostCubit extends Cubit<PostState>{
  final PostService postService = PostService();
  PostCubit():super(PostState.loading());

  Future<void> getPosts()async{
    emit(PostState.loading());
    try {
      List<Post> posts = await postService.getPosts();
      emit(PostState.loaded(posts));
    }catch(e){
      emit(PostState.error("Failed to fetch posts $e"));
    }
  }
}