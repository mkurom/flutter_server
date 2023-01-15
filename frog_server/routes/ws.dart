import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_web_socket/dart_frog_web_socket.dart';

Future<Response> onRequest(RequestContext context) async {
  final handler = webSocketHandler((channel, protocol) {
    channel.stream.listen(
      (message) {
        print('received: $message');

        // フロント側へ返す
        channel.sink.add('pong');
      },
      onDone: () => print('disconnected'),
    );
  });
  return handler(context);
}
