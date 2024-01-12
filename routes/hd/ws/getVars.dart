
import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_web_socket/dart_frog_web_socket.dart';
import '../../../models/varData.dart';
import 'dart:async';

void printMsg<T>(T event ){
  print(event);
}

Future<Response> onRequest(RequestContext context) async{
  // TODO: implement route handler
  // return Response(body: varsData);
  final handler=webSocketHandler((channel, protocol) { 
      channel.stream.listen(printMsg);

      Timer.periodic(const Duration(seconds: 1), (timer) {
        channel.sink.add(varsData);
      });
  });
  return handler(context);
}
