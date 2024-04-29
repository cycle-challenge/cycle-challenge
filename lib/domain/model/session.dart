
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ntp/ntp.dart';
import 'package:uuid/v4.dart';

part 'session.freezed.dart';

@freezed
class Session with _$Session {

  static const uuid = UuidV4();
  static const ttl = Duration(minutes: 3);

  const Session._();

  factory Session({
    required String token,
    required DateTime createdAt
  }) = _Session;

  static Future<Session> create() async {
    final now = await NTP.now();
    return Session(token: uuid.generate(), createdAt: now);
  }

  Future<bool> isExpired() async {
    final now = await NTP.now();
    final expiresAt = createdAt.add(ttl);

    return expiresAt.isBefore(now);
  }

}