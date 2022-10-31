import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_cubit/data_service.dart';
import 'package:flutter_bloc_cubit/post.dart';

class PostsCubit extends Cubit<List<Post>> {
  final _dataService = DataService();

  PostsCubit() : super([]);

  void getPosts() async => emit(await _dataService.getPost());
}
