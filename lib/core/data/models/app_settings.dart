import 'package:isar/isar.dart';

part 'app_settings.g.dart';

@collection
class AppSettings {
  Id id = Isar.autoIncrement;

  String? lastSyncTime;

  bool darkModeEnabled = false;

  String? selectedLanguage;
}
