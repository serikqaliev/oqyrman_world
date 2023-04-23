// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_detail_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookDetailPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int bookId) started,
    required TResult Function() read,
    required TResult Function() addToFavorites,
    required TResult Function() deleteBook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int bookId)? started,
    TResult? Function()? read,
    TResult? Function()? addToFavorites,
    TResult? Function()? deleteBook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int bookId)? started,
    TResult Function()? read,
    TResult Function()? addToFavorites,
    TResult Function()? deleteBook,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Read value) read,
    required TResult Function(_AddToFavorites value) addToFavorites,
    required TResult Function(_DeleteBook value) deleteBook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Read value)? read,
    TResult? Function(_AddToFavorites value)? addToFavorites,
    TResult? Function(_DeleteBook value)? deleteBook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Read value)? read,
    TResult Function(_AddToFavorites value)? addToFavorites,
    TResult Function(_DeleteBook value)? deleteBook,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookDetailPageEventCopyWith<$Res> {
  factory $BookDetailPageEventCopyWith(
          BookDetailPageEvent value, $Res Function(BookDetailPageEvent) then) =
      _$BookDetailPageEventCopyWithImpl<$Res, BookDetailPageEvent>;
}

/// @nodoc
class _$BookDetailPageEventCopyWithImpl<$Res, $Val extends BookDetailPageEvent>
    implements $BookDetailPageEventCopyWith<$Res> {
  _$BookDetailPageEventCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call({int bookId});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$BookDetailPageEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
  }) {
    return _then(_$_Started(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required this.bookId});

  @override
  final int bookId;

  @override
  String toString() {
    return 'BookDetailPageEvent.started(bookId: $bookId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.bookId, bookId) || other.bookId == bookId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int bookId) started,
    required TResult Function() read,
    required TResult Function() addToFavorites,
    required TResult Function() deleteBook,
  }) {
    return started(bookId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int bookId)? started,
    TResult? Function()? read,
    TResult? Function()? addToFavorites,
    TResult? Function()? deleteBook,
  }) {
    return started?.call(bookId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int bookId)? started,
    TResult Function()? read,
    TResult Function()? addToFavorites,
    TResult Function()? deleteBook,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(bookId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Read value) read,
    required TResult Function(_AddToFavorites value) addToFavorites,
    required TResult Function(_DeleteBook value) deleteBook,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Read value)? read,
    TResult? Function(_AddToFavorites value)? addToFavorites,
    TResult? Function(_DeleteBook value)? deleteBook,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Read value)? read,
    TResult Function(_AddToFavorites value)? addToFavorites,
    TResult Function(_DeleteBook value)? deleteBook,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements BookDetailPageEvent {
  const factory _Started({required final int bookId}) = _$_Started;

  int get bookId;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReadCopyWith<$Res> {
  factory _$$_ReadCopyWith(_$_Read value, $Res Function(_$_Read) then) =
      __$$_ReadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReadCopyWithImpl<$Res>
    extends _$BookDetailPageEventCopyWithImpl<$Res, _$_Read>
    implements _$$_ReadCopyWith<$Res> {
  __$$_ReadCopyWithImpl(_$_Read _value, $Res Function(_$_Read) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Read implements _Read {
  const _$_Read();

  @override
  String toString() {
    return 'BookDetailPageEvent.read()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Read);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int bookId) started,
    required TResult Function() read,
    required TResult Function() addToFavorites,
    required TResult Function() deleteBook,
  }) {
    return read();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int bookId)? started,
    TResult? Function()? read,
    TResult? Function()? addToFavorites,
    TResult? Function()? deleteBook,
  }) {
    return read?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int bookId)? started,
    TResult Function()? read,
    TResult Function()? addToFavorites,
    TResult Function()? deleteBook,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Read value) read,
    required TResult Function(_AddToFavorites value) addToFavorites,
    required TResult Function(_DeleteBook value) deleteBook,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Read value)? read,
    TResult? Function(_AddToFavorites value)? addToFavorites,
    TResult? Function(_DeleteBook value)? deleteBook,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Read value)? read,
    TResult Function(_AddToFavorites value)? addToFavorites,
    TResult Function(_DeleteBook value)? deleteBook,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class _Read implements BookDetailPageEvent {
  const factory _Read() = _$_Read;
}

/// @nodoc
abstract class _$$_AddToFavoritesCopyWith<$Res> {
  factory _$$_AddToFavoritesCopyWith(
          _$_AddToFavorites value, $Res Function(_$_AddToFavorites) then) =
      __$$_AddToFavoritesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AddToFavoritesCopyWithImpl<$Res>
    extends _$BookDetailPageEventCopyWithImpl<$Res, _$_AddToFavorites>
    implements _$$_AddToFavoritesCopyWith<$Res> {
  __$$_AddToFavoritesCopyWithImpl(
      _$_AddToFavorites _value, $Res Function(_$_AddToFavorites) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AddToFavorites implements _AddToFavorites {
  const _$_AddToFavorites();

  @override
  String toString() {
    return 'BookDetailPageEvent.addToFavorites()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AddToFavorites);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int bookId) started,
    required TResult Function() read,
    required TResult Function() addToFavorites,
    required TResult Function() deleteBook,
  }) {
    return addToFavorites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int bookId)? started,
    TResult? Function()? read,
    TResult? Function()? addToFavorites,
    TResult? Function()? deleteBook,
  }) {
    return addToFavorites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int bookId)? started,
    TResult Function()? read,
    TResult Function()? addToFavorites,
    TResult Function()? deleteBook,
    required TResult orElse(),
  }) {
    if (addToFavorites != null) {
      return addToFavorites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Read value) read,
    required TResult Function(_AddToFavorites value) addToFavorites,
    required TResult Function(_DeleteBook value) deleteBook,
  }) {
    return addToFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Read value)? read,
    TResult? Function(_AddToFavorites value)? addToFavorites,
    TResult? Function(_DeleteBook value)? deleteBook,
  }) {
    return addToFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Read value)? read,
    TResult Function(_AddToFavorites value)? addToFavorites,
    TResult Function(_DeleteBook value)? deleteBook,
    required TResult orElse(),
  }) {
    if (addToFavorites != null) {
      return addToFavorites(this);
    }
    return orElse();
  }
}

abstract class _AddToFavorites implements BookDetailPageEvent {
  const factory _AddToFavorites() = _$_AddToFavorites;
}

/// @nodoc
abstract class _$$_DeleteBookCopyWith<$Res> {
  factory _$$_DeleteBookCopyWith(
          _$_DeleteBook value, $Res Function(_$_DeleteBook) then) =
      __$$_DeleteBookCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeleteBookCopyWithImpl<$Res>
    extends _$BookDetailPageEventCopyWithImpl<$Res, _$_DeleteBook>
    implements _$$_DeleteBookCopyWith<$Res> {
  __$$_DeleteBookCopyWithImpl(
      _$_DeleteBook _value, $Res Function(_$_DeleteBook) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DeleteBook implements _DeleteBook {
  const _$_DeleteBook();

  @override
  String toString() {
    return 'BookDetailPageEvent.deleteBook()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeleteBook);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int bookId) started,
    required TResult Function() read,
    required TResult Function() addToFavorites,
    required TResult Function() deleteBook,
  }) {
    return deleteBook();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int bookId)? started,
    TResult? Function()? read,
    TResult? Function()? addToFavorites,
    TResult? Function()? deleteBook,
  }) {
    return deleteBook?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int bookId)? started,
    TResult Function()? read,
    TResult Function()? addToFavorites,
    TResult Function()? deleteBook,
    required TResult orElse(),
  }) {
    if (deleteBook != null) {
      return deleteBook();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Read value) read,
    required TResult Function(_AddToFavorites value) addToFavorites,
    required TResult Function(_DeleteBook value) deleteBook,
  }) {
    return deleteBook(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Read value)? read,
    TResult? Function(_AddToFavorites value)? addToFavorites,
    TResult? Function(_DeleteBook value)? deleteBook,
  }) {
    return deleteBook?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Read value)? read,
    TResult Function(_AddToFavorites value)? addToFavorites,
    TResult Function(_DeleteBook value)? deleteBook,
    required TResult orElse(),
  }) {
    if (deleteBook != null) {
      return deleteBook(this);
    }
    return orElse();
  }
}

abstract class _DeleteBook implements BookDetailPageEvent {
  const factory _DeleteBook() = _$_DeleteBook;
}

/// @nodoc
mixin _$BookDetailPageState {
  BookModel? get book => throw _privateConstructorUsedError;
  List<BookModel> get anotherBooksFromSameAuthor =>
      throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        idle,
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        processing,
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        successful,
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        successfullyDeleted,
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        idle,
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        processing,
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        successful,
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        successfullyDeleted,
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        idle,
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        processing,
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        successful,
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        successfullyDeleted,
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleBookDetailPageState value) idle,
    required TResult Function(ProcessingBookDetailPageState value) processing,
    required TResult Function(SuccessfulBookDetailPageState value) successful,
    required TResult Function(SuccessfullyDeletedBookDetailPageState value)
        successfullyDeleted,
    required TResult Function(ErrorBookDetailPageState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleBookDetailPageState value)? idle,
    TResult? Function(ProcessingBookDetailPageState value)? processing,
    TResult? Function(SuccessfulBookDetailPageState value)? successful,
    TResult? Function(SuccessfullyDeletedBookDetailPageState value)?
        successfullyDeleted,
    TResult? Function(ErrorBookDetailPageState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleBookDetailPageState value)? idle,
    TResult Function(ProcessingBookDetailPageState value)? processing,
    TResult Function(SuccessfulBookDetailPageState value)? successful,
    TResult Function(SuccessfullyDeletedBookDetailPageState value)?
        successfullyDeleted,
    TResult Function(ErrorBookDetailPageState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookDetailPageStateCopyWith<BookDetailPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookDetailPageStateCopyWith<$Res> {
  factory $BookDetailPageStateCopyWith(
          BookDetailPageState value, $Res Function(BookDetailPageState) then) =
      _$BookDetailPageStateCopyWithImpl<$Res, BookDetailPageState>;
  @useResult
  $Res call(
      {BookModel? book,
      List<BookModel> anotherBooksFromSameAuthor,
      String message});

  $BookModelCopyWith<$Res>? get book;
}

/// @nodoc
class _$BookDetailPageStateCopyWithImpl<$Res, $Val extends BookDetailPageState>
    implements $BookDetailPageStateCopyWith<$Res> {
  _$BookDetailPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = freezed,
    Object? anotherBooksFromSameAuthor = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      book: freezed == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as BookModel?,
      anotherBooksFromSameAuthor: null == anotherBooksFromSameAuthor
          ? _value.anotherBooksFromSameAuthor
          : anotherBooksFromSameAuthor // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookModelCopyWith<$Res>? get book {
    if (_value.book == null) {
      return null;
    }

    return $BookModelCopyWith<$Res>(_value.book!, (value) {
      return _then(_value.copyWith(book: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IdleBookDetailPageStateCopyWith<$Res>
    implements $BookDetailPageStateCopyWith<$Res> {
  factory _$$IdleBookDetailPageStateCopyWith(_$IdleBookDetailPageState value,
          $Res Function(_$IdleBookDetailPageState) then) =
      __$$IdleBookDetailPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BookModel? book,
      List<BookModel> anotherBooksFromSameAuthor,
      String message});

  @override
  $BookModelCopyWith<$Res>? get book;
}

/// @nodoc
class __$$IdleBookDetailPageStateCopyWithImpl<$Res>
    extends _$BookDetailPageStateCopyWithImpl<$Res, _$IdleBookDetailPageState>
    implements _$$IdleBookDetailPageStateCopyWith<$Res> {
  __$$IdleBookDetailPageStateCopyWithImpl(_$IdleBookDetailPageState _value,
      $Res Function(_$IdleBookDetailPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = freezed,
    Object? anotherBooksFromSameAuthor = null,
    Object? message = null,
  }) {
    return _then(_$IdleBookDetailPageState(
      book: freezed == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as BookModel?,
      anotherBooksFromSameAuthor: null == anotherBooksFromSameAuthor
          ? _value._anotherBooksFromSameAuthor
          : anotherBooksFromSameAuthor // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IdleBookDetailPageState extends IdleBookDetailPageState {
  const _$IdleBookDetailPageState(
      {this.book = null,
      final List<BookModel> anotherBooksFromSameAuthor = const [],
      this.message = 'Idle'})
      : _anotherBooksFromSameAuthor = anotherBooksFromSameAuthor,
        super._();

  @override
  @JsonKey()
  final BookModel? book;
  final List<BookModel> _anotherBooksFromSameAuthor;
  @override
  @JsonKey()
  List<BookModel> get anotherBooksFromSameAuthor {
    if (_anotherBooksFromSameAuthor is EqualUnmodifiableListView)
      return _anotherBooksFromSameAuthor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_anotherBooksFromSameAuthor);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'BookDetailPageState.idle(book: $book, anotherBooksFromSameAuthor: $anotherBooksFromSameAuthor, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleBookDetailPageState &&
            (identical(other.book, book) || other.book == book) &&
            const DeepCollectionEquality().equals(
                other._anotherBooksFromSameAuthor,
                _anotherBooksFromSameAuthor) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      book,
      const DeepCollectionEquality().hash(_anotherBooksFromSameAuthor),
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdleBookDetailPageStateCopyWith<_$IdleBookDetailPageState> get copyWith =>
      __$$IdleBookDetailPageStateCopyWithImpl<_$IdleBookDetailPageState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        idle,
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        processing,
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        successful,
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        successfullyDeleted,
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        error,
  }) {
    return idle(book, anotherBooksFromSameAuthor, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        idle,
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        processing,
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        successful,
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        successfullyDeleted,
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        error,
  }) {
    return idle?.call(book, anotherBooksFromSameAuthor, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        idle,
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        processing,
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        successful,
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        successfullyDeleted,
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(book, anotherBooksFromSameAuthor, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleBookDetailPageState value) idle,
    required TResult Function(ProcessingBookDetailPageState value) processing,
    required TResult Function(SuccessfulBookDetailPageState value) successful,
    required TResult Function(SuccessfullyDeletedBookDetailPageState value)
        successfullyDeleted,
    required TResult Function(ErrorBookDetailPageState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleBookDetailPageState value)? idle,
    TResult? Function(ProcessingBookDetailPageState value)? processing,
    TResult? Function(SuccessfulBookDetailPageState value)? successful,
    TResult? Function(SuccessfullyDeletedBookDetailPageState value)?
        successfullyDeleted,
    TResult? Function(ErrorBookDetailPageState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleBookDetailPageState value)? idle,
    TResult Function(ProcessingBookDetailPageState value)? processing,
    TResult Function(SuccessfulBookDetailPageState value)? successful,
    TResult Function(SuccessfullyDeletedBookDetailPageState value)?
        successfullyDeleted,
    TResult Function(ErrorBookDetailPageState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleBookDetailPageState extends BookDetailPageState {
  const factory IdleBookDetailPageState(
      {final BookModel? book,
      final List<BookModel> anotherBooksFromSameAuthor,
      final String message}) = _$IdleBookDetailPageState;
  const IdleBookDetailPageState._() : super._();

  @override
  BookModel? get book;
  @override
  List<BookModel> get anotherBooksFromSameAuthor;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$IdleBookDetailPageStateCopyWith<_$IdleBookDetailPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProcessingBookDetailPageStateCopyWith<$Res>
    implements $BookDetailPageStateCopyWith<$Res> {
  factory _$$ProcessingBookDetailPageStateCopyWith(
          _$ProcessingBookDetailPageState value,
          $Res Function(_$ProcessingBookDetailPageState) then) =
      __$$ProcessingBookDetailPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BookModel? book,
      List<BookModel> anotherBooksFromSameAuthor,
      String message});

  @override
  $BookModelCopyWith<$Res>? get book;
}

/// @nodoc
class __$$ProcessingBookDetailPageStateCopyWithImpl<$Res>
    extends _$BookDetailPageStateCopyWithImpl<$Res,
        _$ProcessingBookDetailPageState>
    implements _$$ProcessingBookDetailPageStateCopyWith<$Res> {
  __$$ProcessingBookDetailPageStateCopyWithImpl(
      _$ProcessingBookDetailPageState _value,
      $Res Function(_$ProcessingBookDetailPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = freezed,
    Object? anotherBooksFromSameAuthor = null,
    Object? message = null,
  }) {
    return _then(_$ProcessingBookDetailPageState(
      book: freezed == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as BookModel?,
      anotherBooksFromSameAuthor: null == anotherBooksFromSameAuthor
          ? _value._anotherBooksFromSameAuthor
          : anotherBooksFromSameAuthor // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProcessingBookDetailPageState extends ProcessingBookDetailPageState {
  const _$ProcessingBookDetailPageState(
      {required this.book,
      required final List<BookModel> anotherBooksFromSameAuthor,
      this.message = 'Processing'})
      : _anotherBooksFromSameAuthor = anotherBooksFromSameAuthor,
        super._();

  @override
  final BookModel? book;
  final List<BookModel> _anotherBooksFromSameAuthor;
  @override
  List<BookModel> get anotherBooksFromSameAuthor {
    if (_anotherBooksFromSameAuthor is EqualUnmodifiableListView)
      return _anotherBooksFromSameAuthor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_anotherBooksFromSameAuthor);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'BookDetailPageState.processing(book: $book, anotherBooksFromSameAuthor: $anotherBooksFromSameAuthor, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessingBookDetailPageState &&
            (identical(other.book, book) || other.book == book) &&
            const DeepCollectionEquality().equals(
                other._anotherBooksFromSameAuthor,
                _anotherBooksFromSameAuthor) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      book,
      const DeepCollectionEquality().hash(_anotherBooksFromSameAuthor),
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessingBookDetailPageStateCopyWith<_$ProcessingBookDetailPageState>
      get copyWith => __$$ProcessingBookDetailPageStateCopyWithImpl<
          _$ProcessingBookDetailPageState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        idle,
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        processing,
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        successful,
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        successfullyDeleted,
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        error,
  }) {
    return processing(book, anotherBooksFromSameAuthor, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        idle,
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        processing,
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        successful,
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        successfullyDeleted,
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        error,
  }) {
    return processing?.call(book, anotherBooksFromSameAuthor, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        idle,
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        processing,
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        successful,
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        successfullyDeleted,
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(book, anotherBooksFromSameAuthor, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleBookDetailPageState value) idle,
    required TResult Function(ProcessingBookDetailPageState value) processing,
    required TResult Function(SuccessfulBookDetailPageState value) successful,
    required TResult Function(SuccessfullyDeletedBookDetailPageState value)
        successfullyDeleted,
    required TResult Function(ErrorBookDetailPageState value) error,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleBookDetailPageState value)? idle,
    TResult? Function(ProcessingBookDetailPageState value)? processing,
    TResult? Function(SuccessfulBookDetailPageState value)? successful,
    TResult? Function(SuccessfullyDeletedBookDetailPageState value)?
        successfullyDeleted,
    TResult? Function(ErrorBookDetailPageState value)? error,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleBookDetailPageState value)? idle,
    TResult Function(ProcessingBookDetailPageState value)? processing,
    TResult Function(SuccessfulBookDetailPageState value)? successful,
    TResult Function(SuccessfullyDeletedBookDetailPageState value)?
        successfullyDeleted,
    TResult Function(ErrorBookDetailPageState value)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class ProcessingBookDetailPageState extends BookDetailPageState {
  const factory ProcessingBookDetailPageState(
      {required final BookModel? book,
      required final List<BookModel> anotherBooksFromSameAuthor,
      final String message}) = _$ProcessingBookDetailPageState;
  const ProcessingBookDetailPageState._() : super._();

  @override
  BookModel? get book;
  @override
  List<BookModel> get anotherBooksFromSameAuthor;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ProcessingBookDetailPageStateCopyWith<_$ProcessingBookDetailPageState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessfulBookDetailPageStateCopyWith<$Res>
    implements $BookDetailPageStateCopyWith<$Res> {
  factory _$$SuccessfulBookDetailPageStateCopyWith(
          _$SuccessfulBookDetailPageState value,
          $Res Function(_$SuccessfulBookDetailPageState) then) =
      __$$SuccessfulBookDetailPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BookModel? book,
      List<BookModel> anotherBooksFromSameAuthor,
      String message});

  @override
  $BookModelCopyWith<$Res>? get book;
}

/// @nodoc
class __$$SuccessfulBookDetailPageStateCopyWithImpl<$Res>
    extends _$BookDetailPageStateCopyWithImpl<$Res,
        _$SuccessfulBookDetailPageState>
    implements _$$SuccessfulBookDetailPageStateCopyWith<$Res> {
  __$$SuccessfulBookDetailPageStateCopyWithImpl(
      _$SuccessfulBookDetailPageState _value,
      $Res Function(_$SuccessfulBookDetailPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = freezed,
    Object? anotherBooksFromSameAuthor = null,
    Object? message = null,
  }) {
    return _then(_$SuccessfulBookDetailPageState(
      book: freezed == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as BookModel?,
      anotherBooksFromSameAuthor: null == anotherBooksFromSameAuthor
          ? _value._anotherBooksFromSameAuthor
          : anotherBooksFromSameAuthor // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessfulBookDetailPageState extends SuccessfulBookDetailPageState {
  const _$SuccessfulBookDetailPageState(
      {required this.book,
      required final List<BookModel> anotherBooksFromSameAuthor,
      this.message = 'Successful'})
      : _anotherBooksFromSameAuthor = anotherBooksFromSameAuthor,
        super._();

  @override
  final BookModel? book;
  final List<BookModel> _anotherBooksFromSameAuthor;
  @override
  List<BookModel> get anotherBooksFromSameAuthor {
    if (_anotherBooksFromSameAuthor is EqualUnmodifiableListView)
      return _anotherBooksFromSameAuthor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_anotherBooksFromSameAuthor);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'BookDetailPageState.successful(book: $book, anotherBooksFromSameAuthor: $anotherBooksFromSameAuthor, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessfulBookDetailPageState &&
            (identical(other.book, book) || other.book == book) &&
            const DeepCollectionEquality().equals(
                other._anotherBooksFromSameAuthor,
                _anotherBooksFromSameAuthor) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      book,
      const DeepCollectionEquality().hash(_anotherBooksFromSameAuthor),
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessfulBookDetailPageStateCopyWith<_$SuccessfulBookDetailPageState>
      get copyWith => __$$SuccessfulBookDetailPageStateCopyWithImpl<
          _$SuccessfulBookDetailPageState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        idle,
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        processing,
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        successful,
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        successfullyDeleted,
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        error,
  }) {
    return successful(book, anotherBooksFromSameAuthor, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        idle,
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        processing,
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        successful,
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        successfullyDeleted,
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        error,
  }) {
    return successful?.call(book, anotherBooksFromSameAuthor, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        idle,
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        processing,
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        successful,
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        successfullyDeleted,
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(book, anotherBooksFromSameAuthor, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleBookDetailPageState value) idle,
    required TResult Function(ProcessingBookDetailPageState value) processing,
    required TResult Function(SuccessfulBookDetailPageState value) successful,
    required TResult Function(SuccessfullyDeletedBookDetailPageState value)
        successfullyDeleted,
    required TResult Function(ErrorBookDetailPageState value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleBookDetailPageState value)? idle,
    TResult? Function(ProcessingBookDetailPageState value)? processing,
    TResult? Function(SuccessfulBookDetailPageState value)? successful,
    TResult? Function(SuccessfullyDeletedBookDetailPageState value)?
        successfullyDeleted,
    TResult? Function(ErrorBookDetailPageState value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleBookDetailPageState value)? idle,
    TResult Function(ProcessingBookDetailPageState value)? processing,
    TResult Function(SuccessfulBookDetailPageState value)? successful,
    TResult Function(SuccessfullyDeletedBookDetailPageState value)?
        successfullyDeleted,
    TResult Function(ErrorBookDetailPageState value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SuccessfulBookDetailPageState extends BookDetailPageState {
  const factory SuccessfulBookDetailPageState(
      {required final BookModel? book,
      required final List<BookModel> anotherBooksFromSameAuthor,
      final String message}) = _$SuccessfulBookDetailPageState;
  const SuccessfulBookDetailPageState._() : super._();

  @override
  BookModel? get book;
  @override
  List<BookModel> get anotherBooksFromSameAuthor;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SuccessfulBookDetailPageStateCopyWith<_$SuccessfulBookDetailPageState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessfullyDeletedBookDetailPageStateCopyWith<$Res>
    implements $BookDetailPageStateCopyWith<$Res> {
  factory _$$SuccessfullyDeletedBookDetailPageStateCopyWith(
          _$SuccessfullyDeletedBookDetailPageState value,
          $Res Function(_$SuccessfullyDeletedBookDetailPageState) then) =
      __$$SuccessfullyDeletedBookDetailPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BookModel? book,
      List<BookModel> anotherBooksFromSameAuthor,
      String message});

  @override
  $BookModelCopyWith<$Res>? get book;
}

/// @nodoc
class __$$SuccessfullyDeletedBookDetailPageStateCopyWithImpl<$Res>
    extends _$BookDetailPageStateCopyWithImpl<$Res,
        _$SuccessfullyDeletedBookDetailPageState>
    implements _$$SuccessfullyDeletedBookDetailPageStateCopyWith<$Res> {
  __$$SuccessfullyDeletedBookDetailPageStateCopyWithImpl(
      _$SuccessfullyDeletedBookDetailPageState _value,
      $Res Function(_$SuccessfullyDeletedBookDetailPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = freezed,
    Object? anotherBooksFromSameAuthor = null,
    Object? message = null,
  }) {
    return _then(_$SuccessfullyDeletedBookDetailPageState(
      book: freezed == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as BookModel?,
      anotherBooksFromSameAuthor: null == anotherBooksFromSameAuthor
          ? _value._anotherBooksFromSameAuthor
          : anotherBooksFromSameAuthor // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessfullyDeletedBookDetailPageState
    extends SuccessfullyDeletedBookDetailPageState {
  const _$SuccessfullyDeletedBookDetailPageState(
      {required this.book,
      required final List<BookModel> anotherBooksFromSameAuthor,
      this.message = 'Successful'})
      : _anotherBooksFromSameAuthor = anotherBooksFromSameAuthor,
        super._();

  @override
  final BookModel? book;
  final List<BookModel> _anotherBooksFromSameAuthor;
  @override
  List<BookModel> get anotherBooksFromSameAuthor {
    if (_anotherBooksFromSameAuthor is EqualUnmodifiableListView)
      return _anotherBooksFromSameAuthor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_anotherBooksFromSameAuthor);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'BookDetailPageState.successfullyDeleted(book: $book, anotherBooksFromSameAuthor: $anotherBooksFromSameAuthor, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessfullyDeletedBookDetailPageState &&
            (identical(other.book, book) || other.book == book) &&
            const DeepCollectionEquality().equals(
                other._anotherBooksFromSameAuthor,
                _anotherBooksFromSameAuthor) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      book,
      const DeepCollectionEquality().hash(_anotherBooksFromSameAuthor),
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessfullyDeletedBookDetailPageStateCopyWith<
          _$SuccessfullyDeletedBookDetailPageState>
      get copyWith => __$$SuccessfullyDeletedBookDetailPageStateCopyWithImpl<
          _$SuccessfullyDeletedBookDetailPageState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        idle,
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        processing,
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        successful,
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        successfullyDeleted,
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        error,
  }) {
    return successfullyDeleted(book, anotherBooksFromSameAuthor, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        idle,
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        processing,
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        successful,
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        successfullyDeleted,
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        error,
  }) {
    return successfullyDeleted?.call(book, anotherBooksFromSameAuthor, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        idle,
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        processing,
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        successful,
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        successfullyDeleted,
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        error,
    required TResult orElse(),
  }) {
    if (successfullyDeleted != null) {
      return successfullyDeleted(book, anotherBooksFromSameAuthor, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleBookDetailPageState value) idle,
    required TResult Function(ProcessingBookDetailPageState value) processing,
    required TResult Function(SuccessfulBookDetailPageState value) successful,
    required TResult Function(SuccessfullyDeletedBookDetailPageState value)
        successfullyDeleted,
    required TResult Function(ErrorBookDetailPageState value) error,
  }) {
    return successfullyDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleBookDetailPageState value)? idle,
    TResult? Function(ProcessingBookDetailPageState value)? processing,
    TResult? Function(SuccessfulBookDetailPageState value)? successful,
    TResult? Function(SuccessfullyDeletedBookDetailPageState value)?
        successfullyDeleted,
    TResult? Function(ErrorBookDetailPageState value)? error,
  }) {
    return successfullyDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleBookDetailPageState value)? idle,
    TResult Function(ProcessingBookDetailPageState value)? processing,
    TResult Function(SuccessfulBookDetailPageState value)? successful,
    TResult Function(SuccessfullyDeletedBookDetailPageState value)?
        successfullyDeleted,
    TResult Function(ErrorBookDetailPageState value)? error,
    required TResult orElse(),
  }) {
    if (successfullyDeleted != null) {
      return successfullyDeleted(this);
    }
    return orElse();
  }
}

abstract class SuccessfullyDeletedBookDetailPageState
    extends BookDetailPageState {
  const factory SuccessfullyDeletedBookDetailPageState(
      {required final BookModel? book,
      required final List<BookModel> anotherBooksFromSameAuthor,
      final String message}) = _$SuccessfullyDeletedBookDetailPageState;
  const SuccessfullyDeletedBookDetailPageState._() : super._();

  @override
  BookModel? get book;
  @override
  List<BookModel> get anotherBooksFromSameAuthor;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SuccessfullyDeletedBookDetailPageStateCopyWith<
          _$SuccessfullyDeletedBookDetailPageState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorBookDetailPageStateCopyWith<$Res>
    implements $BookDetailPageStateCopyWith<$Res> {
  factory _$$ErrorBookDetailPageStateCopyWith(_$ErrorBookDetailPageState value,
          $Res Function(_$ErrorBookDetailPageState) then) =
      __$$ErrorBookDetailPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BookModel? book,
      List<BookModel> anotherBooksFromSameAuthor,
      String message});

  @override
  $BookModelCopyWith<$Res>? get book;
}

/// @nodoc
class __$$ErrorBookDetailPageStateCopyWithImpl<$Res>
    extends _$BookDetailPageStateCopyWithImpl<$Res, _$ErrorBookDetailPageState>
    implements _$$ErrorBookDetailPageStateCopyWith<$Res> {
  __$$ErrorBookDetailPageStateCopyWithImpl(_$ErrorBookDetailPageState _value,
      $Res Function(_$ErrorBookDetailPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = freezed,
    Object? anotherBooksFromSameAuthor = null,
    Object? message = null,
  }) {
    return _then(_$ErrorBookDetailPageState(
      book: freezed == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as BookModel?,
      anotherBooksFromSameAuthor: null == anotherBooksFromSameAuthor
          ? _value._anotherBooksFromSameAuthor
          : anotherBooksFromSameAuthor // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorBookDetailPageState extends ErrorBookDetailPageState {
  const _$ErrorBookDetailPageState(
      {required this.book,
      required final List<BookModel> anotherBooksFromSameAuthor,
      this.message = 'Error'})
      : _anotherBooksFromSameAuthor = anotherBooksFromSameAuthor,
        super._();

  @override
  final BookModel? book;
  final List<BookModel> _anotherBooksFromSameAuthor;
  @override
  List<BookModel> get anotherBooksFromSameAuthor {
    if (_anotherBooksFromSameAuthor is EqualUnmodifiableListView)
      return _anotherBooksFromSameAuthor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_anotherBooksFromSameAuthor);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'BookDetailPageState.error(book: $book, anotherBooksFromSameAuthor: $anotherBooksFromSameAuthor, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorBookDetailPageState &&
            (identical(other.book, book) || other.book == book) &&
            const DeepCollectionEquality().equals(
                other._anotherBooksFromSameAuthor,
                _anotherBooksFromSameAuthor) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      book,
      const DeepCollectionEquality().hash(_anotherBooksFromSameAuthor),
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorBookDetailPageStateCopyWith<_$ErrorBookDetailPageState>
      get copyWith =>
          __$$ErrorBookDetailPageStateCopyWithImpl<_$ErrorBookDetailPageState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        idle,
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        processing,
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        successful,
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        successfullyDeleted,
    required TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)
        error,
  }) {
    return error(book, anotherBooksFromSameAuthor, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        idle,
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        processing,
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        successful,
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        successfullyDeleted,
    TResult? Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        error,
  }) {
    return error?.call(book, anotherBooksFromSameAuthor, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        idle,
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        processing,
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        successful,
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        successfullyDeleted,
    TResult Function(BookModel? book,
            List<BookModel> anotherBooksFromSameAuthor, String message)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(book, anotherBooksFromSameAuthor, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleBookDetailPageState value) idle,
    required TResult Function(ProcessingBookDetailPageState value) processing,
    required TResult Function(SuccessfulBookDetailPageState value) successful,
    required TResult Function(SuccessfullyDeletedBookDetailPageState value)
        successfullyDeleted,
    required TResult Function(ErrorBookDetailPageState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleBookDetailPageState value)? idle,
    TResult? Function(ProcessingBookDetailPageState value)? processing,
    TResult? Function(SuccessfulBookDetailPageState value)? successful,
    TResult? Function(SuccessfullyDeletedBookDetailPageState value)?
        successfullyDeleted,
    TResult? Function(ErrorBookDetailPageState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleBookDetailPageState value)? idle,
    TResult Function(ProcessingBookDetailPageState value)? processing,
    TResult Function(SuccessfulBookDetailPageState value)? successful,
    TResult Function(SuccessfullyDeletedBookDetailPageState value)?
        successfullyDeleted,
    TResult Function(ErrorBookDetailPageState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorBookDetailPageState extends BookDetailPageState {
  const factory ErrorBookDetailPageState(
      {required final BookModel? book,
      required final List<BookModel> anotherBooksFromSameAuthor,
      final String message}) = _$ErrorBookDetailPageState;
  const ErrorBookDetailPageState._() : super._();

  @override
  BookModel? get book;
  @override
  List<BookModel> get anotherBooksFromSameAuthor;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ErrorBookDetailPageStateCopyWith<_$ErrorBookDetailPageState>
      get copyWith => throw _privateConstructorUsedError;
}
