import 'package:dartz/dartz.dart';
import 'package:news_app_tdd/core/error/failures.dart';
import 'package:news_app_tdd/core/usecases/usecases.dart';
import 'package:news_app_tdd/features/news/data/models/news_model.dart';
import 'package:news_app_tdd/features/news/domain/entities/news.dart';
import 'package:news_app_tdd/features/news/domain/repositories/news_repositories.dart';

class GetConcreteNewsList implements UseCases<Articles>{
  final NewsRepository repository;

  GetConcreteNewsList(this.repository);

  @override
  Future<Either<Failure, Articles>> call() async{
    return await repository.getConcreteNewsList();
  }
}