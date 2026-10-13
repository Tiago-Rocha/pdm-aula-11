import 'package:flutter/material.dart';

import 'accessibility.dart';

/// Settings tab: the app version and the accessibility test switches.
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Definições')),
      body: ListView(
        children: [
          const ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('Tempo Açores'),
            subtitle: Text('Versão 1.0.0'),
          ),
          ValueListenableBuilder(
            valueListenable: largeText,
            builder: (context, value, _) => SwitchListTile(
              secondary: const Icon(Icons.format_size),
              title: const Text('Letra grande (200%)'),
              subtitle: const Text(
                'Como o tamanho de letra máximo do telemóvel',
              ),
              value: value,
              onChanged: (v) => largeText.value = v,
            ),
          ),
          ValueListenableBuilder(
            valueListenable: showSemantics,
            builder: (context, value, _) => SwitchListTile(
              secondary: const Icon(Icons.record_voice_over_outlined),
              title: const Text('Mostrar semântica'),
              subtitle: const Text('O que o leitor de ecrã lê em cada zona'),
              value: value,
              onChanged: (v) => showSemantics.value = v,
            ),
          ),
        ],
      ),
    );
  }
}
