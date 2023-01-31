import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:news_app_tdd/core/error/failures.dart';
import 'package:news_app_tdd/features/news/domain/entities/news.dart';
import 'package:news_app_tdd/features/news/domain/repositories/news_repositories.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:news_app_tdd/features/news/domain/usecases/get_conctere_news_list.dart';

class MockNewsListRepository extends Mock implements NewsRepository{}

void main() {
  late GetConcreteNewsList useCase;
  late MockNewsListRepository mockNewsListRepository;

  setUp(() async {
    mockNewsListRepository = MockNewsListRepository();
    useCase = GetConcreteNewsList(mockNewsListRepository);
  });

  const tNews = Articles(title: 'test', author: 'Shaxobiddin', description: 'This is test case', content: 'testing');

  test('should get list of news from repository', () async{
    //Arrange
    when(mockNewsListRepository.getConcreteNewsList()).thenAnswer((_) async => const Right(tNews));
    //Act
    final result = await useCase();
    ///Assert
    expect(result, const Right(tNews));
    verify(mockNewsListRepository.getConcreteNewsList());
    verifyNoMoreInteractions(mockNewsListRepository);
  });

}
