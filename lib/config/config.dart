class Config {
  final bool _isDevMode = true;
  final String _prodUrl = "https://openlibrary.org/api";
  final String _devUrl = "https://openlibrary.org/api";

  String baseUrl() {
    if (_isDevMode) {
      return _devUrl;
    }
    return _prodUrl;
  }
}
