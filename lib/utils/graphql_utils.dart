import 'package:graphql/client.dart';

class GraphQLUtils {
  static void processException(QueryResult result) {
    if (result.exception!.graphqlErrors.isNotEmpty) {
      throw Exception(result.exception!.graphqlErrors.first.message);
    } else if (result.exception!.linkException is HttpLinkServerException) {
      throw Exception(
        (result.exception!.linkException! as HttpLinkServerException)
            .parsedResponse!
            .errors!
            .first
            .message,
      );
    } else if (result.exception!.linkException is UnknownException) {
      throw result.exception!.linkException!.originalException!;
    } else {
      throw result.exception!;
    }
  }
}
