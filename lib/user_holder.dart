import 'models/user.dart';

import 'string_util.dart';

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

  setFriends(String login, List<User> friend) {
    users[login].addFriend(friend);
  }

  User findUserInFriends(String login, User usersFriend) {
    for (var friend in users[login].friends) {
      if (friend == usersFriend) return friend;
    }
    throw Exception("fried not found");
  }

  List<User> importUsers(List<String> users) {
    String email;
    String phone;
    String fullName;
    List<User> result = [];
    users.forEach((element) {
      var usersList = element.replaceAll('\n', '').trim().split(';');
      if (usersList.length != 0) {
        usersList.forEach((el) {
          if (el != '') {
            if (el.contains('@')) {
              email = el.trim();
            } else if (el.contains('+')) {
              phone = el.trim();
            } else {
              fullName = el.trim();
            }
          }
        });
        result.add(User(name: fullName, phone: phone, email: email));
      }
    });
    return result;
  }
}