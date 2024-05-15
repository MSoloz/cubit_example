import 'package:freezed_annotation/freezed_annotation.dart';
import '../../model/post/post_model.dart';


part 'post_state.freezed.dart';

@freezed
class PostState with _$PostState{
  factory PostState.loading() = _Loading;
  factory PostState.loaded(List<Post> posts) = _Loaded;
  factory PostState.error(String message) = _Error;
}