// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MenuEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(BookModel book) changeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BookModel book)? changeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BookModel book)? changeFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeFavorite value) changeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeFavorite value)? changeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeFavorite value)? changeFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuEventCopyWith<$Res> {
  factory $MenuEventCopyWith(MenuEvent value, $Res Function(MenuEvent) then) =
      _$MenuEventCopyWithImpl<$Res, MenuEvent>;
}

/// @nodoc
class _$MenuEventCopyWithImpl<$Res, $Val extends MenuEvent>
    implements $MenuEventCopyWith<$Res> {
  _$MenuEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$MenuEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started extends _Started {
  const _$_Started() : super._();

  @override
  String toString() {
    return 'MenuEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(BookModel book) changeFavorite,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BookModel book)? changeFavorite,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BookModel book)? changeFavorite,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeFavorite value) changeFavorite,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeFavorite value)? changeFavorite,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeFavorite value)? changeFavorite,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started extends MenuEvent {
  const factory _Started() = _$_Started;
  const _Started._() : super._();
}

/// @nodoc
abstract class _$$_ChangeFavoriteCopyWith<$Res> {
  factory _$$_ChangeFavoriteCopyWith(
          _$_ChangeFavorite value, $Res Function(_$_ChangeFavorite) then) =
      __$$_ChangeFavoriteCopyWithImpl<$Res>;
  @useResult
  $Res call({BookModel book});

  $BookModelCopyWith<$Res> get book;
}

/// @nodoc
class __$$_ChangeFavoriteCopyWithImpl<$Res>
    extends _$MenuEventCopyWithImpl<$Res, _$_ChangeFavorite>
    implements _$$_ChangeFavoriteCopyWith<$Res> {
  __$$_ChangeFavoriteCopyWithImpl(
      _$_ChangeFavorite _value, $Res Function(_$_ChangeFavorite) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
  }) {
    return _then(_$_ChangeFavorite(
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as BookModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BookModelCopyWith<$Res> get book {
    return $BookModelCopyWith<$Res>(_value.book, (value) {
      return _then(_value.copyWith(book: value));
    });
  }
}

/// @nodoc

class _$_ChangeFavorite extends _ChangeFavorite {
  const _$_ChangeFavorite({required this.book}) : super._();

  @override
  final BookModel book;

  @override
  String toString() {
    return 'MenuEvent.changeFavorite(book: $book)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeFavorite &&
            (identical(other.book, book) || other.book == book));
  }

  @override
  int get hashCode => Object.hash(runtimeType, book);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeFavoriteCopyWith<_$_ChangeFavorite> get copyWith =>
      __$$_ChangeFavoriteCopyWithImpl<_$_ChangeFavorite>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(BookModel book) changeFavorite,
  }) {
    return changeFavorite(book);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(BookModel book)? changeFavorite,
  }) {
    return changeFavorite?.call(book);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(BookModel book)? changeFavorite,
    required TResult orElse(),
  }) {
    if (changeFavorite != null) {
      return changeFavorite(book);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeFavorite value) changeFavorite,
  }) {
    return changeFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangeFavorite value)? changeFavorite,
  }) {
    return changeFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeFavorite value)? changeFavorite,
    required TResult orElse(),
  }) {
    if (changeFavorite != null) {
      return changeFavorite(this);
    }
    return orElse();
  }
}

abstract class _ChangeFavorite extends MenuEvent {
  const factory _ChangeFavorite({required final BookModel book}) =
      _$_ChangeFavorite;
  const _ChangeFavorite._() : super._();

  BookModel get book;
  @JsonKey(ignore: true)
  _$$_ChangeFavoriteCopyWith<_$_ChangeFavorite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MenuState {
  List<BookModel> get favoriteBooks => throw _privateConstructorUsedError;
  List<BookModel> get lastOpenedBooks => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)
        idle,
    required TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)
        processing,
    required TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)
        successful,
    required TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        idle,
    TResult? Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        processing,
    TResult? Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        successful,
    TResult? Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        idle,
    TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        processing,
    TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        successful,
    TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleMenuState value) idle,
    required TResult Function(ProcessingMenuState value) processing,
    required TResult Function(SuccessfulMenuState value) successful,
    required TResult Function(ErrorMenuState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleMenuState value)? idle,
    TResult? Function(ProcessingMenuState value)? processing,
    TResult? Function(SuccessfulMenuState value)? successful,
    TResult? Function(ErrorMenuState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleMenuState value)? idle,
    TResult Function(ProcessingMenuState value)? processing,
    TResult Function(SuccessfulMenuState value)? successful,
    TResult Function(ErrorMenuState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuStateCopyWith<MenuState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuStateCopyWith<$Res> {
  factory $MenuStateCopyWith(MenuState value, $Res Function(MenuState) then) =
      _$MenuStateCopyWithImpl<$Res, MenuState>;
  @useResult
  $Res call(
      {List<BookModel> favoriteBooks,
      List<BookModel> lastOpenedBooks,
      String message});
}

/// @nodoc
class _$MenuStateCopyWithImpl<$Res, $Val extends MenuState>
    implements $MenuStateCopyWith<$Res> {
  _$MenuStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteBooks = null,
    Object? lastOpenedBooks = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      favoriteBooks: null == favoriteBooks
          ? _value.favoriteBooks
          : favoriteBooks // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      lastOpenedBooks: null == lastOpenedBooks
          ? _value.lastOpenedBooks
          : lastOpenedBooks // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdleMenuStateCopyWith<$Res>
    implements $MenuStateCopyWith<$Res> {
  factory _$$IdleMenuStateCopyWith(
          _$IdleMenuState value, $Res Function(_$IdleMenuState) then) =
      __$$IdleMenuStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BookModel> favoriteBooks,
      List<BookModel> lastOpenedBooks,
      String message});
}

/// @nodoc
class __$$IdleMenuStateCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res, _$IdleMenuState>
    implements _$$IdleMenuStateCopyWith<$Res> {
  __$$IdleMenuStateCopyWithImpl(
      _$IdleMenuState _value, $Res Function(_$IdleMenuState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteBooks = null,
    Object? lastOpenedBooks = null,
    Object? message = null,
  }) {
    return _then(_$IdleMenuState(
      favoriteBooks: null == favoriteBooks
          ? _value._favoriteBooks
          : favoriteBooks // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      lastOpenedBooks: null == lastOpenedBooks
          ? _value._lastOpenedBooks
          : lastOpenedBooks // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IdleMenuState extends IdleMenuState {
  const _$IdleMenuState(
      {final List<BookModel> favoriteBooks = const [],
      final List<BookModel> lastOpenedBooks = const [],
      this.message = 'Idle'})
      : _favoriteBooks = favoriteBooks,
        _lastOpenedBooks = lastOpenedBooks,
        super._();

  final List<BookModel> _favoriteBooks;
  @override
  @JsonKey()
  List<BookModel> get favoriteBooks {
    if (_favoriteBooks is EqualUnmodifiableListView) return _favoriteBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteBooks);
  }

  final List<BookModel> _lastOpenedBooks;
  @override
  @JsonKey()
  List<BookModel> get lastOpenedBooks {
    if (_lastOpenedBooks is EqualUnmodifiableListView) return _lastOpenedBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lastOpenedBooks);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'MenuState.idle(favoriteBooks: $favoriteBooks, lastOpenedBooks: $lastOpenedBooks, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleMenuState &&
            const DeepCollectionEquality()
                .equals(other._favoriteBooks, _favoriteBooks) &&
            const DeepCollectionEquality()
                .equals(other._lastOpenedBooks, _lastOpenedBooks) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_favoriteBooks),
      const DeepCollectionEquality().hash(_lastOpenedBooks),
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdleMenuStateCopyWith<_$IdleMenuState> get copyWith =>
      __$$IdleMenuStateCopyWithImpl<_$IdleMenuState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)
        idle,
    required TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)
        processing,
    required TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)
        successful,
    required TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)
        error,
  }) {
    return idle(favoriteBooks, lastOpenedBooks, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        idle,
    TResult? Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        processing,
    TResult? Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        successful,
    TResult? Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        error,
  }) {
    return idle?.call(favoriteBooks, lastOpenedBooks, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        idle,
    TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        processing,
    TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        successful,
    TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(favoriteBooks, lastOpenedBooks, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleMenuState value) idle,
    required TResult Function(ProcessingMenuState value) processing,
    required TResult Function(SuccessfulMenuState value) successful,
    required TResult Function(ErrorMenuState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleMenuState value)? idle,
    TResult? Function(ProcessingMenuState value)? processing,
    TResult? Function(SuccessfulMenuState value)? successful,
    TResult? Function(ErrorMenuState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleMenuState value)? idle,
    TResult Function(ProcessingMenuState value)? processing,
    TResult Function(SuccessfulMenuState value)? successful,
    TResult Function(ErrorMenuState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleMenuState extends MenuState {
  const factory IdleMenuState(
      {final List<BookModel> favoriteBooks,
      final List<BookModel> lastOpenedBooks,
      final String message}) = _$IdleMenuState;
  const IdleMenuState._() : super._();

  @override
  List<BookModel> get favoriteBooks;
  @override
  List<BookModel> get lastOpenedBooks;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$IdleMenuStateCopyWith<_$IdleMenuState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProcessingMenuStateCopyWith<$Res>
    implements $MenuStateCopyWith<$Res> {
  factory _$$ProcessingMenuStateCopyWith(_$ProcessingMenuState value,
          $Res Function(_$ProcessingMenuState) then) =
      __$$ProcessingMenuStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BookModel> favoriteBooks,
      List<BookModel> lastOpenedBooks,
      String message});
}

/// @nodoc
class __$$ProcessingMenuStateCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res, _$ProcessingMenuState>
    implements _$$ProcessingMenuStateCopyWith<$Res> {
  __$$ProcessingMenuStateCopyWithImpl(
      _$ProcessingMenuState _value, $Res Function(_$ProcessingMenuState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteBooks = null,
    Object? lastOpenedBooks = null,
    Object? message = null,
  }) {
    return _then(_$ProcessingMenuState(
      favoriteBooks: null == favoriteBooks
          ? _value._favoriteBooks
          : favoriteBooks // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      lastOpenedBooks: null == lastOpenedBooks
          ? _value._lastOpenedBooks
          : lastOpenedBooks // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProcessingMenuState extends ProcessingMenuState {
  const _$ProcessingMenuState(
      {required final List<BookModel> favoriteBooks,
      required final List<BookModel> lastOpenedBooks,
      this.message = 'Processing'})
      : _favoriteBooks = favoriteBooks,
        _lastOpenedBooks = lastOpenedBooks,
        super._();

  final List<BookModel> _favoriteBooks;
  @override
  List<BookModel> get favoriteBooks {
    if (_favoriteBooks is EqualUnmodifiableListView) return _favoriteBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteBooks);
  }

  final List<BookModel> _lastOpenedBooks;
  @override
  List<BookModel> get lastOpenedBooks {
    if (_lastOpenedBooks is EqualUnmodifiableListView) return _lastOpenedBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lastOpenedBooks);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'MenuState.processing(favoriteBooks: $favoriteBooks, lastOpenedBooks: $lastOpenedBooks, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessingMenuState &&
            const DeepCollectionEquality()
                .equals(other._favoriteBooks, _favoriteBooks) &&
            const DeepCollectionEquality()
                .equals(other._lastOpenedBooks, _lastOpenedBooks) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_favoriteBooks),
      const DeepCollectionEquality().hash(_lastOpenedBooks),
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessingMenuStateCopyWith<_$ProcessingMenuState> get copyWith =>
      __$$ProcessingMenuStateCopyWithImpl<_$ProcessingMenuState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)
        idle,
    required TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)
        processing,
    required TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)
        successful,
    required TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)
        error,
  }) {
    return processing(favoriteBooks, lastOpenedBooks, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        idle,
    TResult? Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        processing,
    TResult? Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        successful,
    TResult? Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        error,
  }) {
    return processing?.call(favoriteBooks, lastOpenedBooks, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        idle,
    TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        processing,
    TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        successful,
    TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(favoriteBooks, lastOpenedBooks, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleMenuState value) idle,
    required TResult Function(ProcessingMenuState value) processing,
    required TResult Function(SuccessfulMenuState value) successful,
    required TResult Function(ErrorMenuState value) error,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleMenuState value)? idle,
    TResult? Function(ProcessingMenuState value)? processing,
    TResult? Function(SuccessfulMenuState value)? successful,
    TResult? Function(ErrorMenuState value)? error,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleMenuState value)? idle,
    TResult Function(ProcessingMenuState value)? processing,
    TResult Function(SuccessfulMenuState value)? successful,
    TResult Function(ErrorMenuState value)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class ProcessingMenuState extends MenuState {
  const factory ProcessingMenuState(
      {required final List<BookModel> favoriteBooks,
      required final List<BookModel> lastOpenedBooks,
      final String message}) = _$ProcessingMenuState;
  const ProcessingMenuState._() : super._();

  @override
  List<BookModel> get favoriteBooks;
  @override
  List<BookModel> get lastOpenedBooks;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ProcessingMenuStateCopyWith<_$ProcessingMenuState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessfulMenuStateCopyWith<$Res>
    implements $MenuStateCopyWith<$Res> {
  factory _$$SuccessfulMenuStateCopyWith(_$SuccessfulMenuState value,
          $Res Function(_$SuccessfulMenuState) then) =
      __$$SuccessfulMenuStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BookModel> favoriteBooks,
      List<BookModel> lastOpenedBooks,
      String message});
}

/// @nodoc
class __$$SuccessfulMenuStateCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res, _$SuccessfulMenuState>
    implements _$$SuccessfulMenuStateCopyWith<$Res> {
  __$$SuccessfulMenuStateCopyWithImpl(
      _$SuccessfulMenuState _value, $Res Function(_$SuccessfulMenuState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteBooks = null,
    Object? lastOpenedBooks = null,
    Object? message = null,
  }) {
    return _then(_$SuccessfulMenuState(
      favoriteBooks: null == favoriteBooks
          ? _value._favoriteBooks
          : favoriteBooks // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      lastOpenedBooks: null == lastOpenedBooks
          ? _value._lastOpenedBooks
          : lastOpenedBooks // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessfulMenuState extends SuccessfulMenuState {
  const _$SuccessfulMenuState(
      {required final List<BookModel> favoriteBooks,
      required final List<BookModel> lastOpenedBooks,
      this.message = 'Successful'})
      : _favoriteBooks = favoriteBooks,
        _lastOpenedBooks = lastOpenedBooks,
        super._();

  final List<BookModel> _favoriteBooks;
  @override
  List<BookModel> get favoriteBooks {
    if (_favoriteBooks is EqualUnmodifiableListView) return _favoriteBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteBooks);
  }

  final List<BookModel> _lastOpenedBooks;
  @override
  List<BookModel> get lastOpenedBooks {
    if (_lastOpenedBooks is EqualUnmodifiableListView) return _lastOpenedBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lastOpenedBooks);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'MenuState.successful(favoriteBooks: $favoriteBooks, lastOpenedBooks: $lastOpenedBooks, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessfulMenuState &&
            const DeepCollectionEquality()
                .equals(other._favoriteBooks, _favoriteBooks) &&
            const DeepCollectionEquality()
                .equals(other._lastOpenedBooks, _lastOpenedBooks) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_favoriteBooks),
      const DeepCollectionEquality().hash(_lastOpenedBooks),
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessfulMenuStateCopyWith<_$SuccessfulMenuState> get copyWith =>
      __$$SuccessfulMenuStateCopyWithImpl<_$SuccessfulMenuState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)
        idle,
    required TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)
        processing,
    required TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)
        successful,
    required TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)
        error,
  }) {
    return successful(favoriteBooks, lastOpenedBooks, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        idle,
    TResult? Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        processing,
    TResult? Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        successful,
    TResult? Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        error,
  }) {
    return successful?.call(favoriteBooks, lastOpenedBooks, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        idle,
    TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        processing,
    TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        successful,
    TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(favoriteBooks, lastOpenedBooks, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleMenuState value) idle,
    required TResult Function(ProcessingMenuState value) processing,
    required TResult Function(SuccessfulMenuState value) successful,
    required TResult Function(ErrorMenuState value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleMenuState value)? idle,
    TResult? Function(ProcessingMenuState value)? processing,
    TResult? Function(SuccessfulMenuState value)? successful,
    TResult? Function(ErrorMenuState value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleMenuState value)? idle,
    TResult Function(ProcessingMenuState value)? processing,
    TResult Function(SuccessfulMenuState value)? successful,
    TResult Function(ErrorMenuState value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SuccessfulMenuState extends MenuState {
  const factory SuccessfulMenuState(
      {required final List<BookModel> favoriteBooks,
      required final List<BookModel> lastOpenedBooks,
      final String message}) = _$SuccessfulMenuState;
  const SuccessfulMenuState._() : super._();

  @override
  List<BookModel> get favoriteBooks;
  @override
  List<BookModel> get lastOpenedBooks;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SuccessfulMenuStateCopyWith<_$SuccessfulMenuState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorMenuStateCopyWith<$Res>
    implements $MenuStateCopyWith<$Res> {
  factory _$$ErrorMenuStateCopyWith(
          _$ErrorMenuState value, $Res Function(_$ErrorMenuState) then) =
      __$$ErrorMenuStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BookModel> favoriteBooks,
      List<BookModel> lastOpenedBooks,
      String message});
}

/// @nodoc
class __$$ErrorMenuStateCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res, _$ErrorMenuState>
    implements _$$ErrorMenuStateCopyWith<$Res> {
  __$$ErrorMenuStateCopyWithImpl(
      _$ErrorMenuState _value, $Res Function(_$ErrorMenuState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteBooks = null,
    Object? lastOpenedBooks = null,
    Object? message = null,
  }) {
    return _then(_$ErrorMenuState(
      favoriteBooks: null == favoriteBooks
          ? _value._favoriteBooks
          : favoriteBooks // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      lastOpenedBooks: null == lastOpenedBooks
          ? _value._lastOpenedBooks
          : lastOpenedBooks // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorMenuState extends ErrorMenuState {
  const _$ErrorMenuState(
      {required final List<BookModel> favoriteBooks,
      required final List<BookModel> lastOpenedBooks,
      this.message = 'An error has occurred'})
      : _favoriteBooks = favoriteBooks,
        _lastOpenedBooks = lastOpenedBooks,
        super._();

  final List<BookModel> _favoriteBooks;
  @override
  List<BookModel> get favoriteBooks {
    if (_favoriteBooks is EqualUnmodifiableListView) return _favoriteBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteBooks);
  }

  final List<BookModel> _lastOpenedBooks;
  @override
  List<BookModel> get lastOpenedBooks {
    if (_lastOpenedBooks is EqualUnmodifiableListView) return _lastOpenedBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lastOpenedBooks);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'MenuState.error(favoriteBooks: $favoriteBooks, lastOpenedBooks: $lastOpenedBooks, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorMenuState &&
            const DeepCollectionEquality()
                .equals(other._favoriteBooks, _favoriteBooks) &&
            const DeepCollectionEquality()
                .equals(other._lastOpenedBooks, _lastOpenedBooks) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_favoriteBooks),
      const DeepCollectionEquality().hash(_lastOpenedBooks),
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorMenuStateCopyWith<_$ErrorMenuState> get copyWith =>
      __$$ErrorMenuStateCopyWithImpl<_$ErrorMenuState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)
        idle,
    required TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)
        processing,
    required TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)
        successful,
    required TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)
        error,
  }) {
    return error(favoriteBooks, lastOpenedBooks, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        idle,
    TResult? Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        processing,
    TResult? Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        successful,
    TResult? Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        error,
  }) {
    return error?.call(favoriteBooks, lastOpenedBooks, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        idle,
    TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        processing,
    TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        successful,
    TResult Function(List<BookModel> favoriteBooks,
            List<BookModel> lastOpenedBooks, String message)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(favoriteBooks, lastOpenedBooks, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleMenuState value) idle,
    required TResult Function(ProcessingMenuState value) processing,
    required TResult Function(SuccessfulMenuState value) successful,
    required TResult Function(ErrorMenuState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleMenuState value)? idle,
    TResult? Function(ProcessingMenuState value)? processing,
    TResult? Function(SuccessfulMenuState value)? successful,
    TResult? Function(ErrorMenuState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleMenuState value)? idle,
    TResult Function(ProcessingMenuState value)? processing,
    TResult Function(SuccessfulMenuState value)? successful,
    TResult Function(ErrorMenuState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorMenuState extends MenuState {
  const factory ErrorMenuState(
      {required final List<BookModel> favoriteBooks,
      required final List<BookModel> lastOpenedBooks,
      final String message}) = _$ErrorMenuState;
  const ErrorMenuState._() : super._();

  @override
  List<BookModel> get favoriteBooks;
  @override
  List<BookModel> get lastOpenedBooks;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ErrorMenuStateCopyWith<_$ErrorMenuState> get copyWith =>
      throw _privateConstructorUsedError;
}
