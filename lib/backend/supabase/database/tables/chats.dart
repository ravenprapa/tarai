import '../database.dart';

class ChatsTable extends SupabaseTable<ChatsRow> {
  @override
  String get tableName => 'chats';

  @override
  ChatsRow createRow(Map<String, dynamic> data) => ChatsRow(data);
}

class ChatsRow extends SupabaseDataRow {
  ChatsRow(super.data);

  @override
  SupabaseTable get table => ChatsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get a1 => getField<String>('a1');
  set a1(String? value) => setField<String>('a1', value);

  String? get a2 => getField<String>('a2');
  set a2(String? value) => setField<String>('a2', value);

  String? get a2img => getField<String>('a2img');
  set a2img(String? value) => setField<String>('a2img', value);

  String? get a2id => getField<String>('a2id');
  set a2id(String? value) => setField<String>('a2id', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get lastmsg => getField<String>('lastmsg');
  set lastmsg(String? value) => setField<String>('lastmsg', value);
}
