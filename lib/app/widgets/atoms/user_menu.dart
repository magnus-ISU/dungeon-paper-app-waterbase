import 'package:dungeon_paper/app/data/services/user_service.dart';
import 'package:dungeon_paper/app/routes/app_pages.dart';
import 'package:dungeon_paper/app/widgets/atoms/user_avatar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserMenu extends StatelessWidget with UserServiceMixin {
  const UserMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: _buildChild(context),
    );
  }

  Widget _buildChild(BuildContext context) {
    return Material(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        splashColor: Theme.of(context).splashColor,
        onTap: () => Get.toNamed(Routes.userMenu),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Obx(() => UserAvatar(user: user)),
        ),
      ),
    );
  }
}
