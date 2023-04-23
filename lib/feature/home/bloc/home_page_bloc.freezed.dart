// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomePageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() bookAdded,
    required TResult Function(BookModel book) addToFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? bookAdded,
    TResult? Function(BookModel book)? addToFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? bookAdded,
    TResult Function(BookModel book)? addToFavorites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_BookAdded value) bookAdded,
    required TResult Function(_AddToFavorites value) addToFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_BookAdded value)? bookAdded,
    TResult? Function(_AddToFavorites value)? addToFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_BookAdded value)? bookAdded,
    TResult Function(_AddToFavorites value)? addToFavorites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageEventCopyWith<$Res> {
  factory $HomePageEventCopyWith(
          HomePageEvent value, $Res Function(HomePageEvent) then) =
      _$HomePageEventCopyWithImpl<$Res, HomePageEvent>;
}

/// @nodoc
class _$HomePageEventCopyWithImpl<$Res, $Val extends HomePageEvent>
    implements $HomePageEventCopyWith<$Res> {
  _$HomePageEventCopyWithImpl(this._value, this._then);

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
    extends _$HomePageEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'HomePageEvent.started()';
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
    required TResult Function() bookAdded,
    required TResult Function(BookModel book) addToFavorites,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? bookAdded,
    TResult? Function(BookModel book)? addToFavorites,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? bookAdded,
    TResult Function(BookModel book)? addToFavorites,
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
    required TResult Function(_BookAdded value) bookAdded,
    required TResult Function(_AddToFavorites value) addToFavorites,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_BookAdded value)? bookAdded,
    TResult? Function(_AddToFavorites value)? addToFavorites,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_BookAdded value)? bookAdded,
    TResult Function(_AddToFavorites value)? addToFavorites,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomePageEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_BookAddedCopyWith<$Res> {
  factory _$$_BookAddedCopyWith(
          _$_BookAdded value, $Res Function(_$_BookAdded) then) =
      __$$_BookAddedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BookAddedCopyWithImpl<$Res>
    extends _$HomePageEventCopyWithImpl<$Res, _$_BookAdded>
    implements _$$_BookAddedCopyWith<$Res> {
  __$$_BookAddedCopyWithImpl(
      _$_BookAdded _value, $Res Function(_$_BookAdded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_BookAdded implements _BookAdded {
  const _$_BookAdded();

  @override
  String toString() {
    return 'HomePageEvent.bookAdded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BookAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() bookAdded,
    required TResult Function(BookModel book) addToFavorites,
  }) {
    return bookAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? bookAdded,
    TResult? Function(BookModel book)? addToFavorites,
  }) {
    return bookAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? bookAdded,
    TResult Function(BookModel book)? addToFavorites,
    required TResult orElse(),
  }) {
    if (bookAdded != null) {
      return bookAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_BookAdded value) bookAdded,
    required TResult Function(_AddToFavorites value) addToFavorites,
  }) {
    return bookAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_BookAdded value)? bookAdded,
    TResult? Function(_AddToFavorites value)? addToFavorites,
  }) {
    return bookAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_BookAdded value)? bookAdded,
    TResult Function(_AddToFavorites value)? addToFavorites,
    required TResult orElse(),
  }) {
    if (bookAdded != null) {
      return bookAdded(this);
    }
    return orElse();
  }
}

abstract class _BookAdded implements HomePageEvent {
  const factory _BookAdded() = _$_BookAdded;
}

/// @nodoc
abstract class _$$_AddToFavoritesCopyWith<$Res> {
  factory _$$_AddToFavoritesCopyWith(
          _$_AddToFavorites value, $Res Function(_$_AddToFavorites) then) =
      __$$_AddToFavoritesCopyWithImpl<$Res>;
  @useResult
  $Res call({BookModel book});

  $BookModelCopyWith<$Res> get book;
}

/// @nodoc
class __$$_AddToFavoritesCopyWithImpl<$Res>
    extends _$HomePageEventCopyWithImpl<$Res, _$_AddToFavorites>
    implements _$$_AddToFavoritesCopyWith<$Res> {
  __$$_AddToFavoritesCopyWithImpl(
      _$_AddToFavorites _value, $Res Function(_$_AddToFavorites) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
  }) {
    return _then(_$_AddToFavorites(
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

class _$_AddToFavorites implements _AddToFavorites {
  const _$_AddToFavorites({required this.book});

  @override
  final BookModel book;

  @override
  String toString() {
    return 'HomePageEvent.addToFavorites(book: $book)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddToFavorites &&
            (identical(other.book, book) || other.book == book));
  }

  @override
  int get hashCode => Object.hash(runtimeType, book);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddToFavoritesCopyWith<_$_AddToFavorites> get copyWith =>
      __$$_AddToFavoritesCopyWithImpl<_$_AddToFavorites>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() bookAdded,
    required TResult Function(BookModel book) addToFavorites,
  }) {
    return addToFavorites(book);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? bookAdded,
    TResult? Function(BookModel book)? addToFavorites,
  }) {
    return addToFavorites?.call(book);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? bookAdded,
    TResult Function(BookModel book)? addToFavorites,
    required TResult orElse(),
  }) {
    if (addToFavorites != null) {
      return addToFavorites(book);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_BookAdded value) bookAdded,
    required TResult Function(_AddToFavorites value) addToFavorites,
  }) {
    return addToFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_BookAdded value)? bookAdded,
    TResult? Function(_AddToFavorites value)? addToFavorites,
  }) {
    return addToFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_BookAdded value)? bookAdded,
    TResult Function(_AddToFavorites value)? addToFavorites,
    required TResult orElse(),
  }) {
    if (addToFavorites != null) {
      return addToFavorites(this);
    }
    return orElse();
  }
}

abstract class _AddToFavorites implements HomePageEvent {
  const factory _AddToFavorites({required final BookModel book}) =
      _$_AddToFavorites;

  BookModel get book;
  @JsonKey(ignore: true)
  _$$_AddToFavoritesCopyWith<_$_AddToFavorites> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomePageState {
  List<BookModel> get lastOpenedBooks => throw _privateConstructorUsedError;
  List<CategoryModel> get categories => throw _privateConstructorUsedError;
  List<BookModel> get allBooks => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)
        idle,
    required TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)
        processing,
    required TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)
        successful,
    required TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        idle,
    TResult? Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        processing,
    TResult? Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        successful,
    TResult? Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        idle,
    TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        processing,
    TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        successful,
    TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleHomePageState value) idle,
    required TResult Function(ProcessingHomePageState value) processing,
    required TResult Function(SuccessfulHomePageState value) successful,
    required TResult Function(ErrorHomePageState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleHomePageState value)? idle,
    TResult? Function(ProcessingHomePageState value)? processing,
    TResult? Function(SuccessfulHomePageState value)? successful,
    TResult? Function(ErrorHomePageState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleHomePageState value)? idle,
    TResult Function(ProcessingHomePageState value)? processing,
    TResult Function(SuccessfulHomePageState value)? successful,
    TResult Function(ErrorHomePageState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePageStateCopyWith<HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res, HomePageState>;
  @useResult
  $Res call(
      {List<BookModel> lastOpenedBooks,
      List<CategoryModel> categories,
      List<BookModel> allBooks,
      String message});
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res, $Val extends HomePageState>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastOpenedBooks = null,
    Object? categories = null,
    Object? allBooks = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      lastOpenedBooks: null == lastOpenedBooks
          ? _value.lastOpenedBooks
          : lastOpenedBooks // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      allBooks: null == allBooks
          ? _value.allBooks
          : allBooks // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdleHomePageStateCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$IdleHomePageStateCopyWith(
          _$IdleHomePageState value, $Res Function(_$IdleHomePageState) then) =
      __$$IdleHomePageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BookModel> lastOpenedBooks,
      List<CategoryModel> categories,
      List<BookModel> allBooks,
      String message});
}

/// @nodoc
class __$$IdleHomePageStateCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$IdleHomePageState>
    implements _$$IdleHomePageStateCopyWith<$Res> {
  __$$IdleHomePageStateCopyWithImpl(
      _$IdleHomePageState _value, $Res Function(_$IdleHomePageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastOpenedBooks = null,
    Object? categories = null,
    Object? allBooks = null,
    Object? message = null,
  }) {
    return _then(_$IdleHomePageState(
      lastOpenedBooks: null == lastOpenedBooks
          ? _value._lastOpenedBooks
          : lastOpenedBooks // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      allBooks: null == allBooks
          ? _value._allBooks
          : allBooks // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IdleHomePageState extends IdleHomePageState {
  const _$IdleHomePageState(
      {final List<BookModel> lastOpenedBooks = const [],
      final List<CategoryModel> categories = const [],
      final List<BookModel> allBooks = const [],
      this.message = 'Idle'})
      : _lastOpenedBooks = lastOpenedBooks,
        _categories = categories,
        _allBooks = allBooks,
        super._();

  final List<BookModel> _lastOpenedBooks;
  @override
  @JsonKey()
  List<BookModel> get lastOpenedBooks {
    if (_lastOpenedBooks is EqualUnmodifiableListView) return _lastOpenedBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lastOpenedBooks);
  }

  final List<CategoryModel> _categories;
  @override
  @JsonKey()
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<BookModel> _allBooks;
  @override
  @JsonKey()
  List<BookModel> get allBooks {
    if (_allBooks is EqualUnmodifiableListView) return _allBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allBooks);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'HomePageState.idle(lastOpenedBooks: $lastOpenedBooks, categories: $categories, allBooks: $allBooks, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleHomePageState &&
            const DeepCollectionEquality()
                .equals(other._lastOpenedBooks, _lastOpenedBooks) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._allBooks, _allBooks) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_lastOpenedBooks),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_allBooks),
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdleHomePageStateCopyWith<_$IdleHomePageState> get copyWith =>
      __$$IdleHomePageStateCopyWithImpl<_$IdleHomePageState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)
        idle,
    required TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)
        processing,
    required TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)
        successful,
    required TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)
        error,
  }) {
    return idle(lastOpenedBooks, categories, allBooks, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        idle,
    TResult? Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        processing,
    TResult? Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        successful,
    TResult? Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        error,
  }) {
    return idle?.call(lastOpenedBooks, categories, allBooks, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        idle,
    TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        processing,
    TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        successful,
    TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(lastOpenedBooks, categories, allBooks, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleHomePageState value) idle,
    required TResult Function(ProcessingHomePageState value) processing,
    required TResult Function(SuccessfulHomePageState value) successful,
    required TResult Function(ErrorHomePageState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleHomePageState value)? idle,
    TResult? Function(ProcessingHomePageState value)? processing,
    TResult? Function(SuccessfulHomePageState value)? successful,
    TResult? Function(ErrorHomePageState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleHomePageState value)? idle,
    TResult Function(ProcessingHomePageState value)? processing,
    TResult Function(SuccessfulHomePageState value)? successful,
    TResult Function(ErrorHomePageState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleHomePageState extends HomePageState {
  const factory IdleHomePageState(
      {final List<BookModel> lastOpenedBooks,
      final List<CategoryModel> categories,
      final List<BookModel> allBooks,
      final String message}) = _$IdleHomePageState;
  const IdleHomePageState._() : super._();

  @override
  List<BookModel> get lastOpenedBooks;
  @override
  List<CategoryModel> get categories;
  @override
  List<BookModel> get allBooks;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$IdleHomePageStateCopyWith<_$IdleHomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProcessingHomePageStateCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$ProcessingHomePageStateCopyWith(_$ProcessingHomePageState value,
          $Res Function(_$ProcessingHomePageState) then) =
      __$$ProcessingHomePageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BookModel> lastOpenedBooks,
      List<CategoryModel> categories,
      List<BookModel> allBooks,
      String message});
}

/// @nodoc
class __$$ProcessingHomePageStateCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$ProcessingHomePageState>
    implements _$$ProcessingHomePageStateCopyWith<$Res> {
  __$$ProcessingHomePageStateCopyWithImpl(_$ProcessingHomePageState _value,
      $Res Function(_$ProcessingHomePageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastOpenedBooks = null,
    Object? categories = null,
    Object? allBooks = null,
    Object? message = null,
  }) {
    return _then(_$ProcessingHomePageState(
      lastOpenedBooks: null == lastOpenedBooks
          ? _value._lastOpenedBooks
          : lastOpenedBooks // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      allBooks: null == allBooks
          ? _value._allBooks
          : allBooks // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProcessingHomePageState extends ProcessingHomePageState {
  const _$ProcessingHomePageState(
      {required final List<BookModel> lastOpenedBooks,
      required final List<CategoryModel> categories,
      required final List<BookModel> allBooks,
      this.message = 'Processing'})
      : _lastOpenedBooks = lastOpenedBooks,
        _categories = categories,
        _allBooks = allBooks,
        super._();

  final List<BookModel> _lastOpenedBooks;
  @override
  List<BookModel> get lastOpenedBooks {
    if (_lastOpenedBooks is EqualUnmodifiableListView) return _lastOpenedBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lastOpenedBooks);
  }

  final List<CategoryModel> _categories;
  @override
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<BookModel> _allBooks;
  @override
  List<BookModel> get allBooks {
    if (_allBooks is EqualUnmodifiableListView) return _allBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allBooks);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'HomePageState.processing(lastOpenedBooks: $lastOpenedBooks, categories: $categories, allBooks: $allBooks, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessingHomePageState &&
            const DeepCollectionEquality()
                .equals(other._lastOpenedBooks, _lastOpenedBooks) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._allBooks, _allBooks) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_lastOpenedBooks),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_allBooks),
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessingHomePageStateCopyWith<_$ProcessingHomePageState> get copyWith =>
      __$$ProcessingHomePageStateCopyWithImpl<_$ProcessingHomePageState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)
        idle,
    required TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)
        processing,
    required TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)
        successful,
    required TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)
        error,
  }) {
    return processing(lastOpenedBooks, categories, allBooks, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        idle,
    TResult? Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        processing,
    TResult? Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        successful,
    TResult? Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        error,
  }) {
    return processing?.call(lastOpenedBooks, categories, allBooks, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        idle,
    TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        processing,
    TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        successful,
    TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(lastOpenedBooks, categories, allBooks, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleHomePageState value) idle,
    required TResult Function(ProcessingHomePageState value) processing,
    required TResult Function(SuccessfulHomePageState value) successful,
    required TResult Function(ErrorHomePageState value) error,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleHomePageState value)? idle,
    TResult? Function(ProcessingHomePageState value)? processing,
    TResult? Function(SuccessfulHomePageState value)? successful,
    TResult? Function(ErrorHomePageState value)? error,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleHomePageState value)? idle,
    TResult Function(ProcessingHomePageState value)? processing,
    TResult Function(SuccessfulHomePageState value)? successful,
    TResult Function(ErrorHomePageState value)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class ProcessingHomePageState extends HomePageState {
  const factory ProcessingHomePageState(
      {required final List<BookModel> lastOpenedBooks,
      required final List<CategoryModel> categories,
      required final List<BookModel> allBooks,
      final String message}) = _$ProcessingHomePageState;
  const ProcessingHomePageState._() : super._();

  @override
  List<BookModel> get lastOpenedBooks;
  @override
  List<CategoryModel> get categories;
  @override
  List<BookModel> get allBooks;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ProcessingHomePageStateCopyWith<_$ProcessingHomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessfulHomePageStateCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$SuccessfulHomePageStateCopyWith(_$SuccessfulHomePageState value,
          $Res Function(_$SuccessfulHomePageState) then) =
      __$$SuccessfulHomePageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BookModel> lastOpenedBooks,
      List<CategoryModel> categories,
      List<BookModel> allBooks,
      String message});
}

/// @nodoc
class __$$SuccessfulHomePageStateCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$SuccessfulHomePageState>
    implements _$$SuccessfulHomePageStateCopyWith<$Res> {
  __$$SuccessfulHomePageStateCopyWithImpl(_$SuccessfulHomePageState _value,
      $Res Function(_$SuccessfulHomePageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastOpenedBooks = null,
    Object? categories = null,
    Object? allBooks = null,
    Object? message = null,
  }) {
    return _then(_$SuccessfulHomePageState(
      lastOpenedBooks: null == lastOpenedBooks
          ? _value._lastOpenedBooks
          : lastOpenedBooks // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      allBooks: null == allBooks
          ? _value._allBooks
          : allBooks // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessfulHomePageState extends SuccessfulHomePageState {
  const _$SuccessfulHomePageState(
      {required final List<BookModel> lastOpenedBooks,
      required final List<CategoryModel> categories,
      required final List<BookModel> allBooks,
      this.message = 'Successful'})
      : _lastOpenedBooks = lastOpenedBooks,
        _categories = categories,
        _allBooks = allBooks,
        super._();

  final List<BookModel> _lastOpenedBooks;
  @override
  List<BookModel> get lastOpenedBooks {
    if (_lastOpenedBooks is EqualUnmodifiableListView) return _lastOpenedBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lastOpenedBooks);
  }

  final List<CategoryModel> _categories;
  @override
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<BookModel> _allBooks;
  @override
  List<BookModel> get allBooks {
    if (_allBooks is EqualUnmodifiableListView) return _allBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allBooks);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'HomePageState.successful(lastOpenedBooks: $lastOpenedBooks, categories: $categories, allBooks: $allBooks, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessfulHomePageState &&
            const DeepCollectionEquality()
                .equals(other._lastOpenedBooks, _lastOpenedBooks) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._allBooks, _allBooks) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_lastOpenedBooks),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_allBooks),
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessfulHomePageStateCopyWith<_$SuccessfulHomePageState> get copyWith =>
      __$$SuccessfulHomePageStateCopyWithImpl<_$SuccessfulHomePageState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)
        idle,
    required TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)
        processing,
    required TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)
        successful,
    required TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)
        error,
  }) {
    return successful(lastOpenedBooks, categories, allBooks, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        idle,
    TResult? Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        processing,
    TResult? Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        successful,
    TResult? Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        error,
  }) {
    return successful?.call(lastOpenedBooks, categories, allBooks, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        idle,
    TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        processing,
    TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        successful,
    TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(lastOpenedBooks, categories, allBooks, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleHomePageState value) idle,
    required TResult Function(ProcessingHomePageState value) processing,
    required TResult Function(SuccessfulHomePageState value) successful,
    required TResult Function(ErrorHomePageState value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleHomePageState value)? idle,
    TResult? Function(ProcessingHomePageState value)? processing,
    TResult? Function(SuccessfulHomePageState value)? successful,
    TResult? Function(ErrorHomePageState value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleHomePageState value)? idle,
    TResult Function(ProcessingHomePageState value)? processing,
    TResult Function(SuccessfulHomePageState value)? successful,
    TResult Function(ErrorHomePageState value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SuccessfulHomePageState extends HomePageState {
  const factory SuccessfulHomePageState(
      {required final List<BookModel> lastOpenedBooks,
      required final List<CategoryModel> categories,
      required final List<BookModel> allBooks,
      final String message}) = _$SuccessfulHomePageState;
  const SuccessfulHomePageState._() : super._();

  @override
  List<BookModel> get lastOpenedBooks;
  @override
  List<CategoryModel> get categories;
  @override
  List<BookModel> get allBooks;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SuccessfulHomePageStateCopyWith<_$SuccessfulHomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorHomePageStateCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$ErrorHomePageStateCopyWith(_$ErrorHomePageState value,
          $Res Function(_$ErrorHomePageState) then) =
      __$$ErrorHomePageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BookModel> lastOpenedBooks,
      List<CategoryModel> categories,
      List<BookModel> allBooks,
      String message});
}

/// @nodoc
class __$$ErrorHomePageStateCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$ErrorHomePageState>
    implements _$$ErrorHomePageStateCopyWith<$Res> {
  __$$ErrorHomePageStateCopyWithImpl(
      _$ErrorHomePageState _value, $Res Function(_$ErrorHomePageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastOpenedBooks = null,
    Object? categories = null,
    Object? allBooks = null,
    Object? message = null,
  }) {
    return _then(_$ErrorHomePageState(
      lastOpenedBooks: null == lastOpenedBooks
          ? _value._lastOpenedBooks
          : lastOpenedBooks // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      allBooks: null == allBooks
          ? _value._allBooks
          : allBooks // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorHomePageState extends ErrorHomePageState {
  const _$ErrorHomePageState(
      {required final List<BookModel> lastOpenedBooks,
      required final List<CategoryModel> categories,
      required final List<BookModel> allBooks,
      this.message = 'An error has occurred'})
      : _lastOpenedBooks = lastOpenedBooks,
        _categories = categories,
        _allBooks = allBooks,
        super._();

  final List<BookModel> _lastOpenedBooks;
  @override
  List<BookModel> get lastOpenedBooks {
    if (_lastOpenedBooks is EqualUnmodifiableListView) return _lastOpenedBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lastOpenedBooks);
  }

  final List<CategoryModel> _categories;
  @override
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<BookModel> _allBooks;
  @override
  List<BookModel> get allBooks {
    if (_allBooks is EqualUnmodifiableListView) return _allBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allBooks);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'HomePageState.error(lastOpenedBooks: $lastOpenedBooks, categories: $categories, allBooks: $allBooks, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorHomePageState &&
            const DeepCollectionEquality()
                .equals(other._lastOpenedBooks, _lastOpenedBooks) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._allBooks, _allBooks) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_lastOpenedBooks),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_allBooks),
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorHomePageStateCopyWith<_$ErrorHomePageState> get copyWith =>
      __$$ErrorHomePageStateCopyWithImpl<_$ErrorHomePageState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)
        idle,
    required TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)
        processing,
    required TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)
        successful,
    required TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)
        error,
  }) {
    return error(lastOpenedBooks, categories, allBooks, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        idle,
    TResult? Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        processing,
    TResult? Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        successful,
    TResult? Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        error,
  }) {
    return error?.call(lastOpenedBooks, categories, allBooks, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        idle,
    TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        processing,
    TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        successful,
    TResult Function(
            List<BookModel> lastOpenedBooks,
            List<CategoryModel> categories,
            List<BookModel> allBooks,
            String message)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(lastOpenedBooks, categories, allBooks, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleHomePageState value) idle,
    required TResult Function(ProcessingHomePageState value) processing,
    required TResult Function(SuccessfulHomePageState value) successful,
    required TResult Function(ErrorHomePageState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleHomePageState value)? idle,
    TResult? Function(ProcessingHomePageState value)? processing,
    TResult? Function(SuccessfulHomePageState value)? successful,
    TResult? Function(ErrorHomePageState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleHomePageState value)? idle,
    TResult Function(ProcessingHomePageState value)? processing,
    TResult Function(SuccessfulHomePageState value)? successful,
    TResult Function(ErrorHomePageState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorHomePageState extends HomePageState {
  const factory ErrorHomePageState(
      {required final List<BookModel> lastOpenedBooks,
      required final List<CategoryModel> categories,
      required final List<BookModel> allBooks,
      final String message}) = _$ErrorHomePageState;
  const ErrorHomePageState._() : super._();

  @override
  List<BookModel> get lastOpenedBooks;
  @override
  List<CategoryModel> get categories;
  @override
  List<BookModel> get allBooks;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ErrorHomePageStateCopyWith<_$ErrorHomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}
