import 'package:flutter_test/flutter_test.dart';
import 'package:home/category_feature/category_repository.dart';

void main() {
  test("Fetch multiple categories", () async {
    final repository = FakeCategoryRepository();
    final categories = await repository.fetchCategories();
    expect(categories.length, 7);
  });
}
