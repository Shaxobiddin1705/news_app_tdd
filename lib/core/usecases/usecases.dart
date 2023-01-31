import 'package:dartz/dartz.dart';
import 'package:news_app_tdd/core/error/failures.dart';

abstract class UseCases<Type> {
  Future<Either<Failure, Type>> call();
}