library flutter_ume_kit_ecosed;

import 'package:ecosed_kit/ecosed_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ume/core/pluggable.dart';

import 'icon.dart';

class EcosedKitPlugin implements Pluggable {

  final ecosed = EcosedKit();

  @override
  Widget? buildWidget(BuildContext? context) {
    return ecosed.manager();
  }

  @override
  String get displayName => "EcosedKit";

  @override
  ImageProvider<Object> get iconImageProvider => MemoryImage(iconBytes);

  @override
  String get name => "EcosedKit";

  @override
  void onTrigger() {}
}