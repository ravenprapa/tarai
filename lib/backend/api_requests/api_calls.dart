import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetitemsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getitems',
      apiUrl: 'https://hrygfvaktxcbjjfxcmwl.supabase.co/rest/v1/items',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhyeWdmdmFrdHhjYmpqZnhjbXdsIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODQzNzU3NjksImV4cCI6MTk5OTk1MTc2OX0.wDsY-cWvjBDlfElG9ZRMmxvJNfGSV2I6nfiYaxobs2U',
        'Bearer':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhyeWdmdmFrdHhjYmpqZnhjbXdsIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODQzNzU3NjksImV4cCI6MTk5OTk1MTc2OX0.wDsY-cWvjBDlfElG9ZRMmxvJNfGSV2I6nfiYaxobs2U',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UploadfileCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    FFUploadedFile? file,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'uploadfile',
      apiUrl: 'https://tarr.pockethost.io/api/collections/files/records',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'name': name,
        'file': file,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class NotionaccesstokenCall {
  static Future<ApiCallResponse> call({
    String? code = '',
  }) async {
    final ffApiRequestBody = '''
{
  "grant_type": "authorization_code",
  "code": "$code",
  "redirect_uri": "https://tar.parai.space/terms"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'notionaccesstoken',
      apiUrl: 'https://api.notion.com/v1/oauth/token',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Basic MzY3YjhjMzUtN2MwYi00MzFiLWFhNTktNzMxNjc4NTUwYjhkOnNlY3JldF9FazlueDdMQkh6WU5ueWFwREhWRFJkQjRUcXZ5YjEyem5lbkN4N0JiVXpL',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class NotioncollectionsCall {
  static Future<ApiCallResponse> call({
    String? auth = '',
    String? pageid = '',
    String? createddate = '',
  }) async {
    final ffApiRequestBody = '''
{
  "filter": {
    "timestamp": "created_time",
    "created_time": {
      "after": "$createddate"
    }
  },
  "sorts": [
    {
      "timestamp": "created_time",
      "direction": "ascending"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'notioncollections',
      apiUrl: 'https://api.notion.com/v1/databases/$pageid/query',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Notion-Version': '2022-06-28',
        'Authorization': '$auth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? title(dynamic response) => (getJsonField(
        response,
        r'''$.results[*].properties.post.title[*].text.content''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? pageids(dynamic response) => (getJsonField(
        response,
        r'''$.results[*].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? createdtime(dynamic response) => (getJsonField(
        response,
        r'''$.results[*].created_time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? lastedit(dynamic response) => (getJsonField(
        response,
        r'''$.results[*].last_edited_time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class NotionpostsCall {
  static Future<ApiCallResponse> call({
    String? auth = '',
    String? pageid = '',
  }) async {
    const ffApiRequestBody = '''
{
  "filter": {
    "property": "Status",
    "select": {
      "equals": "publish"
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'notionposts',
      apiUrl: 'https://api.notion.com/v1/databases/$pageid/query',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Notion-Version': '2022-06-28',
        'Authorization': '$auth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? title(dynamic response) => (getJsonField(
        response,
        r'''$.results[*].properties.Name.title[*].plain_text''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? pageids(dynamic response) => (getJsonField(
        response,
        r'''$.results[*].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class PostdbidCall {
  static Future<ApiCallResponse> call({
    String? auth = '',
    String? pageid = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'postdbid',
      apiUrl:
          'https://api.notion.com/v1/blocks/$pageid/children?page_size=100',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Notion-Version': '2022-06-28',
        'Authorization': '$auth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? databaseid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.results[0].id''',
      ));
}

class UpdatenotionpgCall {
  static Future<ApiCallResponse> call({
    String? postid = '',
    String? auth = '',
  }) async {
    const ffApiRequestBody = '''
{
  "properties": {
    "Status": {
      "select": {
        "name": "live"
      }
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updatenotionpg',
      apiUrl: 'https://api.notion.com/v1/pages/$postid',
      callType: ApiCallType.PATCH,
      headers: {
        'Content-Type': 'application/json',
        'Notion-Version': '2022-06-28',
        'Authorization': '$auth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GroqCall {
  static Future<ApiCallResponse> call({
    String? message = '',
  }) async {
    final ffApiRequestBody = '''
{
  "messages": [
    {
      "role": "user",
      "content": "$message"
    }
  ],
  "model": "llama3-8b-8192"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'groq',
      apiUrl: 'https://api.groq.com/openai/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? response(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class ParpostsCall {
  static Future<ApiCallResponse> call({
    int? id,
    String? title = '',
    String? collection = '',
    String? content = '',
  }) async {
    final ffApiRequestBody = '''
INSERT INTO "parposts" ("id", "title", "collection", "content")
VALUES
('$id', "$title", "$collection", "$content");''';
    return ApiManager.instance.makeApiCall(
      callName: 'parposts',
      apiUrl: 'https://tarai.parai.space',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
