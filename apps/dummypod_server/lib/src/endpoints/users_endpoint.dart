import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/module.dart' as auth;

import '../generated/protocol.dart';

class UsersEndpoint extends Endpoint {
  Future<List<User>> getAllUsers(
    Session session, {
    String? search,
    int? limit,
    int? skip,
  }) async {
    search ??= '';
    limit ??= 30;

    return await User.db.find(
      session,
      orderBy: (t) => t.id,
      include: User.include(userInfo: auth.UserInfo.include()),
      where: (t) =>
          t.userInfo.fullName.ilike('%$search%') |
          t.userInfo.email.ilike('%$search%') |
          t.userInfo.userName.ilike('%$search%'),
      limit: limit == 0 ? null : limit,
      offset: skip,
    );
  }

  Future<User?> getCurrentUser(Session session) async {
    final userId = await session.auth.authenticatedUserId;
    if (userId == null) return null;

    return await User.db.findFirstRow(
      session,
      include: User.include(userInfo: auth.UserInfo.include()),
      where: (t) => t.userInfoId.equals(userId),
    );
  }

  Future<User?> getUser(Session session, int userId) async {
    return await User.db.findFirstRow(
      session,
      include: User.include(userInfo: auth.UserInfo.include()),
      where: (t) => t.userInfoId.equals(userId),
    );
  }

  Future<User?> updateCurrentUser(
    Session session,
    User user, {
    String? fullName,
  }) async {
    final userId = await session.auth.authenticatedUserId;
    if (userId == null) return null;

    auth.UserInfo? userInfo;
    if (fullName != null) {
      userInfo = (await auth.UserInfo.db.findById(session, userId))!;
      userInfo.fullName = fullName;
    }

    await session.dbNext.transaction((transaction) async {
      if (userInfo != null) {
        await auth.UserInfo.db
            .updateRow(session, userInfo, transaction: transaction);
      }
      await User.db.updateRow(session, user, transaction: transaction);
    });

    return await getCurrentUser(session);
  }
}
