import 'package:dart_frog/dart_frog.dart';
import 'package:test/test.dart';
import 'dart:convert';

Future<Response> onRequest(RequestContext context) async{
  final ct= context;
  final contentType=ct.request.headers.keys;
  // contentType.forEach((element) =>print(element));
  print(ct.request.headers['content-type']);
  // print(ct.request.method.value);
  // print(ct.request.headers);
  // print(ct.request.uri);
  // print(ct.request.uri.queryParameters);
  // final jBody=await ct.request.json();
  // return Response(body: 'Welcome to Dart Frog!');
  return Response.json(body: "ok");
}
