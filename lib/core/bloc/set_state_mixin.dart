import 'package:bloc/bloc.dart' show Emittable;

/// Данный код на Dart является mixin, который называется `SetStateMixin`.
/// Mixin представляет собой механизм множественного наследования в языке Dart.

/// Mixin `SetStateMixin` реализует интерфейс `Emittable`, который определен
/// в библиотеке `bloc`. В данном случае, mixin добавляет метод `setState` в класс,
/// который этот mixin использует.

/// Метод `setState` позволяет изменять состояние объекта, который использует данный mixin,
/// и после изменения состояния вызывает метод `emit`, который определен в интерфейсе `Emittable`.

/// Таким образом, данный mixin позволяет изменять состояние объекта и уведомлять всех подписчиков
/// об изменении состояния через метод `emit`.

mixin SetStateMixin<State extends Object?> implements Emittable<State> {
  void setState(State state) => emit(state);
}
