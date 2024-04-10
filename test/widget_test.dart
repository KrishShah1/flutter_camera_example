import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:camera/camera.dart'; // Import CameraDescription
import 'package:flutter_camera_example/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Create a mock CameraDescription object
    const mockCameraDescription = CameraDescription(
      name: 'mockCamera',
      lensDirection: CameraLensDirection.back,
      sensorOrientation: 0,
    );

    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp(camera: mockCameraDescription));

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
