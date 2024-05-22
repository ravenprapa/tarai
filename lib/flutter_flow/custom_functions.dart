import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/auth/supabase_auth/auth_util.dart';

dynamic specs2jsona(List<SpecsStruct> specs) {
  // return data type list as JSON in the format : {"type value": description value}
  Map<String, String> jsonMap = {};
  for (var s in specs) {
    if (s.hasType()) {
      jsonMap[s.type] = s.description;
    }
  }
  return jsonMap;
}

dynamic specs2jsonb(List<SpecsStruct> specs) {
  // return data type "specs" as JSON
  var jsonList = specs.map((spec) => spec.toSerializableMap()).toList();
  var jsonString = jsonList.map((spec) => jsonEncode(spec)).join(', ');
  return '[' + jsonString + ']';
}

List<SpecsStruct> json2specs(dynamic specs) {
  // return JSON as datatype " specs "
  List<SpecsStruct> specifications = [];

  if (specs != null) {
    List<dynamic> specsList = json.decode(specs);
    specsList.forEach((spec) {
      SpecsStruct specsStruct = SpecsStruct();
      if (spec['type'] != null) {
        specsStruct.type = spec['type'];
      }
      if (spec['description'] != null) {
        specsStruct.description = spec['description'];
      }
      specifications.add(specsStruct);
    });
  }

  return specifications;
}

int filesize(FFUploadedFile file) {
  int fileSizeInBytes = file.bytes?.lengthInBytes ?? 0;

  // Convert bytes to kilobytes
  double fileSizeInKB = fileSizeInBytes / 1024;

  // Round the result to the nearest integer
  return fileSizeInKB.round();
}

String crtdtime(String createdtime) {
  // example return this 2024-04-08T12:43:00.000Z to DATE TIME up to seconds
  final dateTime = DateTime.parse(createdtime);
  final formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
  return formatter.format(dateTime);
}

List<String> jSON2imgs(dynamic images) {
  // return JSON as list of "Imagepath"
  List<String> imagePaths = [];

  for (var image in images) {
    String imagePath = image['path'];
    imagePaths.add(imagePath);
  }

  return imagePaths;
}

List<SpecsStruct> json2specsCopy(dynamic specs) {
  // return JSON as datatype " specs "
  List<SpecsStruct> specifications = [];

  if (specs != null) {
    List<dynamic> specsList = json.decode(specs);
    specsList.forEach((spec) {
      SpecsStruct specsStruct = SpecsStruct();
      if (spec['type'] != null) {
        specsStruct.type = spec['type'];
      }
      if (spec['description'] != null) {
        specsStruct.description = spec['description'];
      }
      specifications.add(specsStruct);
    });
  }

  return specifications;
}

dynamic imgs2JSON(List<String> images) {
  // return as JSON
  return jsonEncode(images);
}

dynamic spaces2jsonb(List<ChannelStruct> channels) {
  // return data type " channels" with fields cg, channel, no as JSON
  List<Map<String, dynamic>> jsonList = [];
  for (var channel in channels) {
    jsonList.add({
      'cg': channel.cg,
      'channel': channel.channel,
      'no': channel.no,
      'icon': channel.icon,
    });
  }
  return jsonList;
}

List<ChannelStruct> jSON2spaces(dynamic channel) {
  List<ChannelStruct> channels = [];

  if (channel != null) {
    List<dynamic> channelList = jsonDecode(channel);
    channelList.forEach((chan) {
      ChannelStruct channelStruct = ChannelStruct();
      if (chan['cg'] != null) {
        channelStruct.cg = chan['cg'];
      }
      if (chan['channel'] != null) {
        channelStruct.channel = chan['channel'];
      }
      if (chan['icon'] != null) {
        channelStruct.icon = chan['icon'];
      }
      if (chan['no'] != null) {
        channelStruct.no = chan['no'];
      }
      channels.add(channelStruct);
    });
  }

  return channels;
}
