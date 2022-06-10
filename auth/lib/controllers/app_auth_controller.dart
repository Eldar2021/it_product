import 'package:auth/models/response_model.dart';
import 'package:conduit/conduit.dart';

class AppAuthController extends ResourceController {
  AppAuthController(this.managedContext);

  final ManagedContext managedContext;

  @Operation.post()
  Future<Response> signIn() async {
    return Response.ok(
      ResponseModel(
        data: {
          'id': '1',
          'refreshToken': 'refreshToken',
          'accessToken': 'accessToken',
        },
        massage: 'signIn ok',
      ).toMap(),
    );
  }

  @Operation.put()
  Future<Response> signUp() async {
    return Response.ok(
      ResponseModel(
        data: {
          'id': '1',
          'refreshToken': 'refreshToken',
          'accessToken': 'accessToken',
        },
        massage: 'signUp ok',
      ).toMap(),
    );
  }

  @Operation.post('refresh')
  Future<Response> refresh() async {
    return Response.unauthorized(
      body: ResponseModel(
        error: 'token is Not valid',
      ).toMap(),
    );
  }
}
