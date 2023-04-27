import 'package:graphql/client.dart';

class GraphQLUtils {
  static void processException(QueryResult result) {
    if (result.exception!.graphqlErrors.isNotEmpty) {
      throw Exception(result.exception!.graphqlErrors.first.message);
    }
    try {
      throw result.exception!.linkException!;
    } on HttpLinkParserException catch (e) {
      throw '${e.response.statusCode} ${e.response.reasonPhrase}';
    } on HttpLinkServerException catch (e) {
      throw e.parsedResponse!.errors!.first.message;
    } on LinkException catch (e) {
      throw e.originalException!;
    }
  }
}
