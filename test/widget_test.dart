import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../lib/user_holder.dart';

void main() {
  UserHolder holder;
  
  setUp(() {
    holder = UserHolder();
  });

  tearDownAll(() {
    holder = null;
  });

  test('registerUser', () {
    holder.registerUser("Test Iva", "+79000000096", "test@gmail.com");
    
    expect("test@gmail.com", holder.users["test@gmail.com"].login);
    expect("+79000000096", holder.users["fedor.buzinov@gmail.com"].phone);
    expect("fedor.buzinov@gmail.com", holder.users["test@gmail.com"].email);
    expect("Test Iva", holder.users["test@gmail.com"].name);
  });
}
