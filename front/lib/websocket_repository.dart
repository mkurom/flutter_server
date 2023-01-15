import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;

class WebsocketRepository {
  WebsocketRepository({WebSocketChannel? socket})
      : _ws = socket ??
            WebSocketChannel.connect(
              Uri.parse('ws://localhost:8080/ws'),
            );

  final WebSocketChannel _ws;

  /// サーバーに送信する
  void increment() => _ws.sink.add('init');

  // 接続しているwsのstream
  Stream<dynamic> get stream => _ws.stream;

  /// 接続を解除
  void close() => _ws.sink.close(status.goingAway);
}
