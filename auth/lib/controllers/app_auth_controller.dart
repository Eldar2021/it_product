import 'package:auth/models/response_model.dart';
import 'package:conduit/conduit.dart';

import '../models/user_data.dart';

class AppAuthController extends ResourceController {
  AppAuthController(this.managedContext);

  final ManagedContext managedContext;

  @Operation.post()
  Future<Response> signIn(@Bind.body() User user) async {
    if (user.password == null || user.userName == null) {
      return Response.badRequest(
        body: ResponseModel(massage: 'password and username is requred'),
      );
    }
    final User fetchUser = User();

    // connect DB
    // find user
    // check password
    // return user

    return Response.ok(
      ResponseModel(
        data: {
          'id': fetchUser.id,
          'refreshToken': fetchUser.refreshToken,
          'accessToken': fetchUser.accessToken,
        },
        massage: 'signIn ok',
      ).toMap(),
    );
  }

  @Operation.put()
  Future<Response> signUp(@Bind.body() User user) async {
    if (user.password == null || user.userName == null || user.email == null) {
      return Response.badRequest(
        body: ResponseModel(massage: 'password, email and username is requred'),
      );
    }
    final User fetchUser = User();

    // connect DB
    // create user
    // return user

    return Response.ok(
      ResponseModel(
        data: {
          'id': fetchUser.id,
          'refreshToken': fetchUser.refreshToken,
          'accessToken': fetchUser.accessToken,
        },
        massage: 'signUp ok',
      ).toMap(),
    );
  }

  @Operation.post('refresh')
  Future<Response> refresh(@Bind.path('refresh') String refreshToken) async {
    final User fetchUser = User();

    // connect DB
    // find user
    // check password
    // return user

    return Response.ok(
      ResponseModel(
        data: {
          'id': fetchUser.id,
          'refreshToken': fetchUser.refreshToken,
          'accessToken': fetchUser.accessToken,
        },
        massage: 'refresh ok',
      ).toMap(),
    );
  }
}
