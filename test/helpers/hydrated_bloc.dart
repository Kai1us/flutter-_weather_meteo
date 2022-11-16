import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class MockStograge extends Mock implements Storage {}

late Storage hydratedStorage;

void initHydratedStorage() {
  TestWidgetsFlutterBinding.ensureInitialized();
  hydratedStorage = MockStograge();
  when(() => hydratedStorage.write(any(), any<dynamic>())
  ).thenAnswer((_) async {});
  HydratedBloc.storage = hydratedStorage;
}