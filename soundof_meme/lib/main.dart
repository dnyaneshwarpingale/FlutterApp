import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const SoundOfMemeApp());
}

class SoundOfMemeApp extends StatelessWidget {
  const SoundOfMemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sound of Meme',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MemeSoundsScreen(),
    );
  }
}

class MemeSoundsScreen extends StatefulWidget {
  const MemeSoundsScreen({super.key});

  @override
  State createState() => _MemeSoundsScreenState();
}

class _MemeSoundsScreenState extends State<MemeSoundsScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();

  final List<MemeSound> _memeSounds = [
    MemeSound('Meme Sound 1', 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3'),
    MemeSound('Meme Sound 2', 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3'),
    // Add more sounds here
  ];

  Uri path = Uri.parse('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3');
  void _playSound(Uri path) async {
    await _audioPlayer.play(path as Source);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sound of Meme'),
      ),
      body: ListView.builder(
        itemCount: _memeSounds.length,
        itemBuilder: (context, index) {
          final memeSound = _memeSounds[index];
          return ListTile(
            title: Text(memeSound.name),
            onTap: () => _playSound(path),
          );
        },
      ),
    );
  }
}

class MemeSound {
  final String name;
  final String path;

  MemeSound(this.name, this.path);
}

