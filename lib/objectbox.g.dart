// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again
// with `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types, depend_on_referenced_packages
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'
    as obx_int; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart' as obx;
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'models/entity/message_entity.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <obx_int.ModelEntity>[
  obx_int.ModelEntity(
      id: const obx_int.IdUid(1, 1085277260818776134),
      name: 'MessageEntity',
      lastPropertyId: const obx_int.IdUid(6, 3676341876881710723),
      flags: 0,
      properties: <obx_int.ModelProperty>[
        obx_int.ModelProperty(
            id: const obx_int.IdUid(1, 7317184739993359810),
            name: 'id',
            type: 6,
            flags: 1),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(2, 6943873401490328956),
            name: 'roomId',
            type: 9,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(3, 3656083254477336101),
            name: 'messageId',
            type: 9,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(4, 6732327368832685310),
            name: 'sender',
            type: 9,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(5, 6766809394927210809),
            name: 'content',
            type: 9,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(6, 3676341876881710723),
            name: 'timestamp',
            type: 10,
            flags: 0)
      ],
      relations: <obx_int.ModelRelation>[],
      backlinks: <obx_int.ModelBacklink>[])
];

/// Shortcut for [obx.Store.new] that passes [getObjectBoxModel] and for Flutter
/// apps by default a [directory] using `defaultStoreDirectory()` from the
/// ObjectBox Flutter library.
///
/// Note: for desktop apps it is recommended to specify a unique [directory].
///
/// See [obx.Store.new] for an explanation of all parameters.
///
/// For Flutter apps, also calls `loadObjectBoxLibraryAndroidCompat()` from
/// the ObjectBox Flutter library to fix loading the native ObjectBox library
/// on Android 6 and older.
Future<obx.Store> openStore(
    {String? directory,
    int? maxDBSizeInKB,
    int? maxDataSizeInKB,
    int? fileMode,
    int? maxReaders,
    bool queriesCaseSensitiveDefault = true,
    String? macosApplicationGroup}) async {
  await loadObjectBoxLibraryAndroidCompat();
  return obx.Store(getObjectBoxModel(),
      directory: directory ?? (await defaultStoreDirectory()).path,
      maxDBSizeInKB: maxDBSizeInKB,
      maxDataSizeInKB: maxDataSizeInKB,
      fileMode: fileMode,
      maxReaders: maxReaders,
      queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
      macosApplicationGroup: macosApplicationGroup);
}

/// Returns the ObjectBox model definition for this project for use with
/// [obx.Store.new].
obx_int.ModelDefinition getObjectBoxModel() {
  final model = obx_int.ModelInfo(
      entities: _entities,
      lastEntityId: const obx_int.IdUid(1, 1085277260818776134),
      lastIndexId: const obx_int.IdUid(0, 0),
      lastRelationId: const obx_int.IdUid(0, 0),
      lastSequenceId: const obx_int.IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, obx_int.EntityDefinition>{
    MessageEntity: obx_int.EntityDefinition<MessageEntity>(
        model: _entities[0],
        toOneRelations: (MessageEntity object) => [],
        toManyRelations: (MessageEntity object) => {},
        getId: (MessageEntity object) => object.id,
        setId: (MessageEntity object, int id) {
          object.id = id;
        },
        objectToFB: (MessageEntity object, fb.Builder fbb) {
          final roomIdOffset = fbb.writeString(object.roomId);
          final messageIdOffset = fbb.writeString(object.messageId);
          final senderOffset = fbb.writeString(object.sender);
          final contentOffset = fbb.writeString(object.content);
          fbb.startTable(7);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, roomIdOffset);
          fbb.addOffset(2, messageIdOffset);
          fbb.addOffset(3, senderOffset);
          fbb.addOffset(4, contentOffset);
          fbb.addInt64(5, object.timestamp.millisecondsSinceEpoch);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (obx.Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final idParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          final roomIdParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 6, '');
          final messageIdParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 8, '');
          final senderParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 10, '');
          final contentParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 12, '');
          final timestampParam = DateTime.fromMillisecondsSinceEpoch(
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 14, 0));
          final object = MessageEntity(
              id: idParam,
              roomId: roomIdParam,
              messageId: messageIdParam,
              sender: senderParam,
              content: contentParam,
              timestamp: timestampParam);

          return object;
        })
  };

  return obx_int.ModelDefinition(model, bindings);
}

/// [MessageEntity] entity fields to define ObjectBox queries.
class MessageEntity_ {
  /// See [MessageEntity.id].
  static final id =
      obx.QueryIntegerProperty<MessageEntity>(_entities[0].properties[0]);

  /// See [MessageEntity.roomId].
  static final roomId =
      obx.QueryStringProperty<MessageEntity>(_entities[0].properties[1]);

  /// See [MessageEntity.messageId].
  static final messageId =
      obx.QueryStringProperty<MessageEntity>(_entities[0].properties[2]);

  /// See [MessageEntity.sender].
  static final sender =
      obx.QueryStringProperty<MessageEntity>(_entities[0].properties[3]);

  /// See [MessageEntity.content].
  static final content =
      obx.QueryStringProperty<MessageEntity>(_entities[0].properties[4]);

  /// See [MessageEntity.timestamp].
  static final timestamp =
      obx.QueryDateProperty<MessageEntity>(_entities[0].properties[5]);
}
