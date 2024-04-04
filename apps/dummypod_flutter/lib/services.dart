import 'package:dummypod_client/dummypod_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

var client = Client('http://$localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();
