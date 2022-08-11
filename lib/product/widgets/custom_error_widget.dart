import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../core/manager/language/locale_keys.g.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        LocaleKeys.error.tr(),
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
