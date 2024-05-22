import '../database.dart';

class PostsTable extends SupabaseTable<PostsRow> {
  @override
  String get tableName => 'posts';

  @override
  PostsRow createRow(Map<String, dynamic> data) => PostsRow(data);
}

class PostsRow extends SupabaseDataRow {
  PostsRow(super.data);

  @override
  SupabaseTable get table => PostsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get pageid => getField<String>('pageid');
  set pageid(String? value) => setField<String>('pageid', value);

  String? get tags => getField<String>('tags');
  set tags(String? value) => setField<String>('tags', value);

  String? get collection => getField<String>('collection');
  set collection(String? value) => setField<String>('collection', value);
}
