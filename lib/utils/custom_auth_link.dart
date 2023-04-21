import 'dart:async';

import 'package:graphql/client.dart';

class CustomAuthLink extends Link {
  late Link _link;
  FutureOr<void> Function() updateToken;

  CustomAuthLink({required this.updateToken}) {
    _link = Link.concat(
      DedupeLink(),
      ErrorLink(onException: handleException, onGraphQLError: onGraphQLError),
    );
  }

  Stream<Response> handleException(
    Request request,
    NextLink forward,
    LinkException exception,
  ) async* {
    if (exception is HttpLinkServerException &&
        exception.response.statusCode == 401) {
      await updateToken();
      yield* forward(request);
      return;
    }

    throw exception;
  }

  Stream<Response>? onGraphQLError(
    Request request,
    NextLink forward,
    Response response,
  ) async* {
    final isUnauthorized = response.errors!.any(
      (err) => err.message == 'Unauthorized',
    );
    if (isUnauthorized) {
      await updateToken();
      yield* forward(request);
      return;
    }
    yield response;
  }

  @override
  Stream<Response> request(Request request, [forward]) async* {
    yield* _link.request(request, forward);
  }
}
