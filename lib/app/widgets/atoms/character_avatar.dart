import 'package:cached_network_image/cached_network_image.dart';
import 'package:dungeon_paper/app/data/models/character.dart';
import 'package:dungeon_paper/app/data/services/character_service.dart';
import 'package:dungeon_paper/app/widgets/atoms/avatar_circular_progress.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CharacterAvatar extends GetView {
  final Character? character;
  final Widget Function(BuildContext context, String avatarUrl, double size) builder;
  final double size;

  const CharacterAvatar._({
    Key? key,
    this.character,
    required this.size,
    required this.builder,
  }) : super(key: key);

  factory CharacterAvatar({
    Key? key,
    Character? character,
    required double size,
    required final Widget Function(BuildContext context, String avatarUrl, double size) builder,
  }) =>
      CharacterAvatar._(key: key, character: character, size: size, builder: builder);

  factory CharacterAvatar.roundedRect({
    Key? key,
    Character? character,
    required double size,
  }) =>
      CharacterAvatar._(key: key, character: character, size: size, builder: _rRectBuilder);

  factory CharacterAvatar.circle({
    Key? key,
    Character? character,
    required double size,
  }) =>
      CharacterAvatar._(key: key, character: character, size: size, builder: _circleBuilder);

  factory CharacterAvatar.squircle({
    Key? key,
    Character? character,
    required double size,
  }) =>
      CharacterAvatar._(key: key, character: character, size: size, builder: _squircleBuilder);

  @override
  Widget build(BuildContext context) {
    if (character != null) {
      return _renderForChar(context, character);
    }
    return Obx(() {
      final ctrl = Get.find<CharacterService>();
      return _renderForChar(context, ctrl.maybeCurrent);
    });
  }

  static Widget _rRectBuilder(BuildContext context, String url, double size) => ClipRRect(
        borderRadius: BorderRadius.circular(size / 8),
        child: _renderImage(context, url, size),
      );

  static Widget _circleBuilder(BuildContext context, String url, double size) => CircleAvatar(
        // clipBehavior: Clip.hardEdge,
        foregroundImage: _renderImageProvider(url),
        radius: size / 2,
      );

  static CachedNetworkImageProvider? _renderImageProvider(String url) =>
      url.isNotEmpty ? CachedNetworkImageProvider(url) : null;

  static Widget _squircleBuilder(BuildContext context, String url, double size) => Material(
        shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(size / 1.5)),
        clipBehavior: Clip.antiAlias,
        child: _renderImage(context, url, size),
      );

  static Widget _renderImage(BuildContext context, String url, double size) {
    if (url.isNotEmpty) {
      return CachedNetworkImage(
        imageUrl: url,
        width: size,
        height: size,
        memCacheHeight: size.toInt(),
        memCacheWidth: size.toInt(),
        fit: BoxFit.cover,
        progressIndicatorBuilder: (context, url, state) => AvatarCircularProgress(size: size),
        errorWidget: (context, url, err) => Stack(
          children: [
            _buildDefaultImage(context, size),
            const Positioned(
                bottom: 8,
                left: 0,
                right: 0,
                child: Text(
                  'Error loading image',
                  textAlign: TextAlign.center,
                )),
          ],
        ),
      );
    }

    return _buildDefaultImage(context, size);
  }

  static Widget _buildDefaultImage(BuildContext context, double size) {
    final theme = Theme.of(context);
    final textStyle = theme.primaryTextTheme.titleMedium!;
    return Container(
      color: ThemeData.estimateBrightnessForColor(textStyle.color!) == Brightness.dark
          ? theme.primaryColorLight
          : theme.primaryColorDark,
      child: Icon(Icons.person, size: size),
    );
  }

  Widget _renderForChar(BuildContext context, Character? char) => builder(context, char?.avatarUrl ?? '', size);
}
