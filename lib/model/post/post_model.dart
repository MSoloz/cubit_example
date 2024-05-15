import 'package:freezed_annotation/freezed_annotation.dart';


part 'post_model.g.dart';
part 'post_model.freezed.dart';

@freezed
class Post with _$Post {
  const factory Post({
    required int id,
    required int userId,
    required String title,
    required String body,
  })=_Post;

  factory Post.fromJson(Map<String,dynamic> json)=> _$PostFromJson(json);
}