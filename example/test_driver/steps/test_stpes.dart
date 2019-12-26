import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_gherkin/src/flutter/flutter_world.dart';
import 'package:gherkin/gherkin.dart';

/// when scroll 10 times
class WhenScrollTimes
    extends When4WithWorld<String, num, num, int, FlutterWorld> {
  WhenScrollTimes()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  RegExp get pattern => RegExp(r"I scroll {string} by {num},{num} in {int}ms");

  @override
  Future<void> executeStep(String listKey, num x, num y, num timeInMs) async {
    final listFinder = find.byValueKey(listKey);
    world.driver.waitFor(listFinder);
    print("$x,$y $timeInMs");

    await world.driver.scroll(listFinder, x.toDouble(), y.toDouble(),
        Duration(milliseconds: timeInMs),
        timeout: Duration(seconds: 1));
  }
}

class WaitForConnect extends GivenWithWorld {
  @override
  Future<void> executeStep() async {
    await FlutterDriver.connect();
    return null;
  }

  @override
  RegExp get pattern => RegExp(r"I start application");
}
