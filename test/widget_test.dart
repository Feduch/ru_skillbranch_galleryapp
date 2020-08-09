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
    expect("+79000000096", holder.users["test@gmail.com"].phone);
    expect("test@gmail.com", holder.users["test@gmail.com"].email);
    expect("Test Iva", holder.users["test@gmail.com"].name);
  });

//  test('registerUserByEmail', () {
//    holder.registerUserByEmail("Test Iva", "test@gmail.com");
//
//    expect("test@gmail.com", holder.users["test@gmail.com"].login);
//    expect("test@gmail.com", holder.users["test@gmail.com"].email);
//    expect("Test Iva", holder.users["test@gmail.com"].name);
//  });
//
//  test('registerUserByPhone', () {
//    holder.registerUserByPhone("Test Iva", "+79000000096");
//
//    expect("+79000000096", holder.users["test@gmail.com"].login);
//    expect("+79000000096", holder.users["test@gmail.com"].phone);
//    expect("Test Iva", holder.users["test@gmail.com"].name);
//  });
}
