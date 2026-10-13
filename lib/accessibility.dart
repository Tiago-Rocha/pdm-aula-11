import 'package:flutter/foundation.dart';

/// Test switches for this class, set in the settings tab.
///
/// largeText simulates the phone's text size at 200%; showSemantics shows
/// what a screen reader (TalkBack, VoiceOver) reads on each part of the screen.
final largeText = ValueNotifier(Uri.base.queryParameters['large'] == '1');
final showSemantics = ValueNotifier(false);
