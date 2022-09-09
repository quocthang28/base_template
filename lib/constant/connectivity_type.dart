/// Connection is an enum of supported network states
enum ConnectionType {
  /// When connection state is [wifi]
  wifi(0xFF),

  /// When connection state is [cellular]
  cellular(0xEE),

  /// When connection state is [disconnected]
  disconnected(0xDD),

  /// When connection state is [unknown]
  unknown(0xCC);

  const ConnectionType(this.value);
  final num value;
}
