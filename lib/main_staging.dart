import 'package:smarthealthy/app/app.dart';
import 'package:smarthealthy/bootstrap.dart';
import 'package:smarthealthy/flavors.dart';

Future<void> main() async {
  await bootstrap(
    () {
      return const App();
    },
    Flavor.STAGING,
  );
}
