import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/new_book_bloc.dart';

/// Класс AddPdfButton представляет собой кнопку, при нажатии на которую пользователь может
/// выбрать файл PDF с помощью библиотеки file_picker. После выбора файла, его путь передается
/// в блок NewBookBloc с помощью события NewBookEvent.choosePdf.

/// Внутри метода build() создается виджет ElevatedButton, который обернут в BlocSelector.
/// Это позволяет получать состояние pdf из блока NewBookBloc и использовать его для определения
/// внешнего вида кнопки. Если pdf == null, то кнопка отображает текст "Кітапты жүктеу"
/// и иконку Icons.upload_file, иначе отображается название файла и иконка Icons.edit_document.

/// Также важно отметить, что при нажатии на кнопку используется ключевое слово await,
/// что позволяет программе ожидать завершения операции выбора файла.

class AddPdfButton extends StatefulWidget {
  const AddPdfButton({
    Key? key,
  }) : super(key: key);

  @override
  State<AddPdfButton> createState() => _AddPdfButtonState();
}

class _AddPdfButtonState extends State<AddPdfButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: double.infinity,
      child: BlocSelector<NewBookBloc, NewBookState, File?>(
        selector: (state) {
          return state.pdf;
        },
        builder: (context, pdf) {
          return ElevatedButton(
            onPressed: () async {
              final result = await FilePicker.platform.pickFiles(
                type: FileType.custom,
                allowedExtensions: ['pdf'],
              );

              if (result != null) {
                final File pdfFile = File(result.files.single.path!);

                if (mounted) {
                  context.read<NewBookBloc>().add(
                        NewBookEvent.choosePdf(pdf: pdfFile),
                      );
                }
              } else {
                // User canceled the picker
              }
            },
            style: ElevatedButton.styleFrom(
              side: const BorderSide(
                color: Color(0xFF698809),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  8,
                ),
              ),
              backgroundColor:
                  pdf == null ? Colors.transparent : const Color(0xFF698809),
              foregroundColor:
                  pdf == null ? const Color(0xFF698809) : Colors.white,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  pdf == null ? Icons.upload_file : Icons.edit_document,
                ),
                const SizedBox(
                  width: 8,
                ),
                Flexible(
                  child: Text(
                    pdf == null ? 'Кітапты жүктеу' : pdf.path.split('/').last,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 16,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
