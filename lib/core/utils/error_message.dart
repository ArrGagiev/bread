// class ErrorMessage {
//   ErrorMessage({required this.message});
//   final String message;

//   @override
//   String toString() {
//     return message;
//   }
// }

class ErrorMessage implements Exception {
  final String? message;
  final int? statusCode;
  final Map<String, dynamic>? errorDetails;

  ErrorMessage({
    this.message,
    this.statusCode,
    this.errorDetails,
  });

  @override
  String toString() {
    final sb = StringBuffer('ServerException: ');
    if (message != null) {
      sb.write('Message: $message, ');
    }
    if (statusCode != null) {
      sb.write('StatusCode: $statusCode, ');
    }
    if (errorDetails != null) {
      sb.write('ErrorDetails: $errorDetails');
    }
    return sb.toString();
  }
}
