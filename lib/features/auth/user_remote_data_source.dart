import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import '../../network/api.dart';
import 'models/user_model.dart';

part 'user_remote_data_source.g.dart';

@RestApi()
abstract class UserRemoteDataSource {
  factory UserRemoteDataSource(Dio dio, {String baseUrl}) = _UserRemoteDataSource;


  @POST('/users')
  Future<void> addUser(@Body() UserModel userModel);

}

final usersRemoteDataSource = Provider<UserRemoteDataSource>(
  (ref) => UserRemoteDataSource(
    ref.read(dio),
  ),
);
