import 'package:equatable/equatable.dart';

class Articles extends Equatable{
  final String title;
  final String author;
  final String description;
  final String content;

  const Articles({required this.title, required this.author, required this.description, required this.content});

  @override
  // TODO: implement props
  List<Object?> get props => [title, author, description, content];
}