import 'package:bloc/bloc.dart';

class PageCubit extends Cubit<int> {
  //? super merupakan inisialisasi dari variabel yang diberikan. Misal: Cubit<int>, maka nilai kembalian yang diminta adalah value dengan tipe integer. Penulisan PageCunit() : super(0) cara kerjanya mirip dengan konstruktor pada OOP.
  PageCubit() : super(0);

  void newPage(int pageNumber) {
    // NOTE: emit memiliki fungsi untuk merubah state pada CUBIT
    emit(pageNumber);
  }
}
