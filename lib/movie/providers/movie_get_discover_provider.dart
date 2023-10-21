import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/movie/repositories/movie_repository.dart';

class MovieGetDiscoverProvider with ChangeNotifier {
  final MovieRepository _movieRepository;

  MovieGetDiscoverProvider(this._movieRepository);

  bool _isLoading =
      false; // variabe dengan nilai false untuk menghentikan circularprogresindicator
  bool get isLoading => _isLoading;

  void getDiscover(BuildContext context) async {
    _isLoading = true;
    notifyListeners();

    final result = await _movieRepository.getDiscover();

    result.fold(
        //untuk memisahkan pesan error dan berhasil
        (errorMassage) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(errorMassage)));
      return;
    }, (Response) => null);
  }
}
