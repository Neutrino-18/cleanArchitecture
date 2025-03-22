import 'package:internet_connection_checker/internet_connection_checker.dart';

// Network Info Structure
abstract class NetworkInfo {
  Future<bool>? get isconnected;
}

// For obtaining the connection status
class NetworkInfoImpl implements NetworkInfo {
  final InternetConnectionChecker internetConnectionChecker;

  NetworkInfoImpl(this.internetConnectionChecker);
  @override
  Future<bool>? get isconnected => internetConnectionChecker.hasConnection;
}
