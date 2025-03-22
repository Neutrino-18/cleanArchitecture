import 'package:internet_connection_checker/internet_connection_checker.dart';

// Network Info Structure
abstract class NetworkInfo {
  Future<bool>? get isconnected;
}

// For obtaining the connection status
class NetworkInfoImplementation implements NetworkInfo {
  final InternetConnectionChecker internetConnectionChecker;

  NetworkInfoImplementation(this.internetConnectionChecker);
  @override
  Future<bool>? get isconnected => internetConnectionChecker.hasConnection;
}
