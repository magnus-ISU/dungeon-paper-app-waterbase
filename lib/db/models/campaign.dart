import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dungeon_paper/db/db.dart';
import 'package:dungeon_paper/db/models/character.dart';
import 'package:dungeon_paper/db/models/converters/default_uuid.dart';
import 'package:dungeon_paper/db/models/converters/document_reference_converter.dart';
import 'package:dungeon_paper/db/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign.freezed.dart';
part 'campaign.g.dart';

@freezed
abstract class Campaign with FirebaseMixin, KeyMixin implements _$Campaign {
  const Campaign._();

  const factory Campaign({
    @DefaultUuid() String key,
    @DocumentReferenceConverter() DocumentReference ref,
    @Default('Our Campaign') String name,
    @Default('') String description,
    User owner,
    @DocumentReferenceConverter()
    @JsonKey(name: 'characters')
        List<DocumentReference> characterRefs,
  }) = _Campaign;

  Future<Iterable<Character>> get characters =>
      getRefs(characterRefs, (c) => Character.fromJson(c));

  factory Campaign.fromJson(json) => _$CampaignFromJson(json);
}
