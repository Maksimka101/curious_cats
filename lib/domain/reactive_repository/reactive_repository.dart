import 'dart:async';

import 'package:flutter/foundation.dart';

/// Base for the reactive repositories.
///
/// Almost all repositories should be reactive. That is they should have loading function
/// which loads data and [emit]s it to the [dataStream] but don't returns this data.
///
/// Usage example:
/// ```
/// class User {}
///
/// class UserRepository with ReactiveRepository<User> {
///   DB _db;
///
///   /// Opens db.
///   @override
///   Future<void> initialize() async {
///     _db = await openDb();
///     super.initialize();
///   }
///
///   /// Loads `User` and adds (emits) it to the [dataStream]
///   Future<void> loadUser() async {
///     final user = await _db.load<User>();
///     emit(user);
///   }
///
///   /// Closes the db connection.
///   @override
///   Future<void> dispose() async {
///     await _db.close();
///     super.dispose();
///   }
/// }
/// ```
abstract class ReactiveRepository<T> {
  final _dataStreamController = StreamController<T>.broadcast();
  T? _data;

  /// Stream of data from the repository.
  Stream<T> get dataStream => _dataStreamController.stream;

  /// Latest value that was [emit]ted to the [dataStream].
  T? get data => _data;

  /// Emits a [newData] to the [dataStream] and updates [data].
  @protected
  @visibleForTesting
  void emit(T newData) {
    _data = newData;
    _dataStreamController.add(newData);
  }

  /// Initializes repository.
  ///
  /// It's a good place to connect to the DB or WebSocket.
  @mustCallSuper
  Future<void> initialize() async {}

  /// Disposes all resources.
  ///
  /// Here you can close all DB or WebSocket connections.
  @mustCallSuper
  Future<void> dispose() async {
    await _dataStreamController.close();
  }
}
