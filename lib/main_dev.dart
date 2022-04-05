import 'package:flutter/widgets.dart';
import 'package:diplom_proj/config/app_config.dart';
import 'package:diplom_proj/initialize_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeApp(appConfig: DevConfig());
}
