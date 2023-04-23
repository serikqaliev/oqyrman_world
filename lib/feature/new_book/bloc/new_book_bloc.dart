import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:books_app/feature/book_details/model/category_model.dart';
import 'package:drift/native.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/bloc/set_state_mixin.dart';
import '../../book_details/repository/books_repository.dart';

part 'new_book_event.dart';
part 'new_book_state.dart';
part 'new_book_bloc.freezed.dart';

class NewBookBloc extends Bloc<NewBookEvent, NewBookState>
    with SetStateMixin<NewBookState> {
  final BooksRepository _booksRepository;

  NewBookBloc({
    required BooksRepository booksRepository,
  })  : _booksRepository = booksRepository,
        super(
          const NewBookState.idle(),
        ) {
    on<NewBookEvent>((event, emit) {
      event.map(
        started: (event) => _started(event, emit),
        changeTitle: (event) => _changeTitle(event, emit),
        changeAuthor: (event) => _changeAuthor(event, emit),
        changeDescription: (event) => _changeDescription(event, emit),
        chooseCategory: (event) => _chooseCategory(event, emit),
        changeNewCategoryTitle: (event) => _changeNewCategoryTitle(event, emit),
        addNewCategory: (event) => _addNewCategory(event, emit),
        choosePdf: (event) => _choosePdf(event, emit),
        save: (event) => _save(event, emit),
      );
    });
  }

  Future<void> _started(
    _Started event,
    Emitter<NewBookState> emit,
  ) async {
    setState(
      NewBookState.processing(
        categories: state.categories,
        title: state.title,
        author: state.author,
        description: state.description,
        category: state.category,
        newCategoryTitle: state.newCategoryTitle,
        pdf: state.pdf,
      ),
    );

    final List<CategoryModel> categories =
        await _booksRepository.getAllCategories();

    setState(
      NewBookState.idle(
        categories: categories,
        title: state.title,
        author: state.author,
        description: state.description,
        category: state.category,
        newCategoryTitle: state.newCategoryTitle,
        pdf: state.pdf,
      ),
    );
  }

  Future<void> _changeTitle(
    _ChangeTitle event,
    Emitter<NewBookState> emit,
  ) async {
    setState(
      NewBookState.idle(
        title: event.title,
        categories: state.categories,
        author: state.author,
        description: state.description,
        category: state.category,
        newCategoryTitle: state.newCategoryTitle,
        pdf: state.pdf,
      ),
    );
  }

  Future<void> _changeAuthor(
    _ChangeAuthor event,
    Emitter<NewBookState> emit,
  ) async {
    setState(
      NewBookState.idle(
        author: event.author,
        title: state.title,
        categories: state.categories,
        description: state.description,
        category: state.category,
        newCategoryTitle: state.newCategoryTitle,
        pdf: state.pdf,
      ),
    );
  }

  Future<void> _changeDescription(
    _ChangeDescription event,
    Emitter<NewBookState> emit,
  ) async {
    setState(
      NewBookState.idle(
        description: event.description,
        title: state.title,
        categories: state.categories,
        author: state.author,
        category: state.category,
        newCategoryTitle: state.newCategoryTitle,
        pdf: state.pdf,
      ),
    );
  }

  Future<void> _chooseCategory(
    _ChangeCategory event,
    Emitter<NewBookState> emit,
  ) async {
    setState(
      NewBookState.idle(
        category: event.category,
        title: state.title,
        categories: state.categories,
        author: state.author,
        description: state.description,
        newCategoryTitle: state.newCategoryTitle,
        pdf: state.pdf,
      ),
    );
  }

  Future<void> _changeNewCategoryTitle(
    _ChangeNewCategoryTitle event,
    Emitter<NewBookState> dasemit,
  ) async {
    setState(
      NewBookState.idle(
        newCategoryTitle: event.newCategoryTitle,
        title: state.title,
        categories: state.categories,
        author: state.author,
        description: state.description,
        category: state.category,
        pdf: state.pdf,
      ),
    );
  }

  Future<void> _addNewCategory(
    _AddNewCategory event,
    Emitter<NewBookState> emit,
  ) async {
    setState(
      NewBookState.processing(
        categories: state.categories,
        title: state.title,
        author: state.author,
        description: state.description,
        category: state.category,
        newCategoryTitle: state.newCategoryTitle,
        pdf: state.pdf,
      ),
    );

    try {
      await _booksRepository.insertCategory(
        CategoryModel(
          category: state.newCategoryTitle,
        ),
      );
    } on SqliteException catch (error, stackTrace) {
      setState(
        NewBookState.error(
          message:
              'Жаңа категория қосу барысында қате кетті. Мұндай категория бар болуы мүмкін',
          categories: state.categories,
          pdf: state.pdf,
          title: state.title,
          author: state.author,
          newCategoryTitle: state.newCategoryTitle,
          description: state.description,
          category: state.category,
        ),
      );
      Error.safeToString(error);
      stackTrace.toString();
      rethrow;
    } on Object catch (error, stackTrace) {
      setState(
        NewBookState.error(
          message:
              'Жаңа категория қосу барысында қате кетті. Мұндай категория бар болуы мүмкін',
          categories: state.categories,
          pdf: state.pdf,
          title: state.title,
          author: state.author,
          newCategoryTitle: state.newCategoryTitle,
          description: state.description,
          category: state.category,
        ),
      );
      Error.safeToString(error);
      stackTrace.toString();
      rethrow;
    }

    final List<CategoryModel> categories =
        await _booksRepository.getAllCategories();

    setState(
      NewBookState.idle(
        categories: categories,
        pdf: state.pdf,
        title: state.title,
        author: state.author,
        newCategoryTitle: state.newCategoryTitle,
        description: state.description,
        category: state.category,
      ),
    );
  }

  Future<void> _choosePdf(
    _ChoosePdf event,
    Emitter<NewBookState> emit,
  ) async {
    setState(
      NewBookState.idle(
        pdf: event.pdf,
        title: state.title,
        categories: state.categories,
        author: state.author,
        newCategoryTitle: state.newCategoryTitle,
        description: state.description,
        category: state.category,
      ),
    );
  }

  Future<void> _save(
    _Save event,
    Emitter<NewBookState> emit,
  ) async {
    setState(
      NewBookState.processing(
        categories: state.categories,
        title: state.title,
        author: state.author,
        description: state.description,
        category: state.category,
        newCategoryTitle: state.newCategoryTitle,
        pdf: state.pdf,
      ),
    );

    await _booksRepository.insertBook(
      title: state.title,
      author: state.author,
      description: state.description,
      category: state.category!,
      pdf: state.pdf!,
    );

    setState(
      NewBookState.successful(
        categories: state.categories,
        title: state.title,
        author: state.author,
        description: state.description,
        category: state.category!,
        newCategoryTitle: state.newCategoryTitle,
        pdf: state.pdf,
      ),
    );
  }
}
