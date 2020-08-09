import 'models/user.dart';

import 'string_utils.dart';

class UserHolder {
  Map<String, User> users = {};

  void registerUser(String name, String phone, String email) {
    User user = User(name: name, email: email, phone: phone);

    print(user.toString());

    if (!users.containsKey(user.login)) {
      users[user.login] = user;
    } else {
      throw Exception("A user with this login already exists");
    }
  }

  void registerUserByEmail(String name, String email) {
    User user = User(name: name, email: email);

    print(user.toString());

    if (!users.containsKey(user.login)) {
      users[user.login] = user;
    } else {
      throw Exception("A user with this email already exists");
    }
  }

  void registerUserByPhone(String name, String phone) {
    User user = User(name: name, phone: phone);

    print(user.toString());

    if (!users.containsKey(user.login)) {
      users[user.login] = user;
    } else {
      throw Exception("A user with this phone already exists");
    }
  }

  void findUserInFriends(String login) {

  }

  void importUsers(String fileName  ) {

  }
}