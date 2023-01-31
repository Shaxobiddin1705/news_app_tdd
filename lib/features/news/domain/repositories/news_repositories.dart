import 'package:dartz/dartz.dart';
import 'package:news_app_tdd/core/error/failures.dart';
import 'package:news_app_tdd/features/news/data/models/news_model.dart';
import 'package:news_app_tdd/features/news/domain/entities/news.dart';

abstract class NewsRepository {
  Future<Either<Failure, Articles>> getConcreteNewsList();
}