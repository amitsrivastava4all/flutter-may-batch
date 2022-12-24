import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

void main() {
  runApp(MaterialApp(
    home: Hardware(),
  ));
}

class Hardware extends StatefulWidget {
  const Hardware({Key? key}) : super(key: key);

  @override
  State<Hardware> createState() => _HardwareState();
}

class _HardwareState extends State<Hardware> {
  final ImagePicker _picker = ImagePicker();
  bool isImage = true;
  late final XFile? photo;
  late File file;
  String path =
      "https://uxwing.com/wp-content/themes/uxwing/download/peoples-avatars/no-profile-picture-icon.png";

  initState() {
    super.initState();
    _initSpeech();
  }

  _camera() async {
    photo = await _picker.pickImage(source: ImageSource.camera);
    if (photo != null) {
      isImage = false;
      file = new File(photo!.path);
      setState(() {});
    }
  }

  SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;

  // Listeners
  void _startListening() async {
    await _speechToText.listen(onResult: _onSpeechResult);
    setState(() {});
  }

  String words = "";
  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(() {
      words = result.recognizedWords;
    });
  }

  void _stopListening() async {
    await _speechToText.stop();
    setState(() {});
  }

  /// This has to happen only once per app
  void _initSpeech() async {
    try {
      _speechEnabled = await _speechToText.initialize();
      print('Speech Enabled Value is $_speechEnabled');
    } catch (err) {
      print("Error ");
      print(err);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed:
            // If not yet listening for speech start, otherwise stop
            _speechToText.isNotListening ? _startListening : _stopListening,
        tooltip: 'Listen',
        child: Icon(_speechToText.isNotListening ? Icons.mic_off : Icons.mic),
      ),
      body: Column(
        children: [
          Signature(
            key: const Key('signature'),
            controller: _controller,
            height: 300,
            backgroundColor: Colors.grey[300]!,
          ),

          isImage ? Image.network(path) : Image.file(file),
          Text(
            // If listening is active show the recognized words
            _speechToText.isListening
                ? '$words'
                // If listening isn't active but could be tell the user
                // how to start it, otherwise indicate that speech
                // recognition is not yet ready or not supported on
                // the target device
                : _speechEnabled
                    ? 'Tap the microphone to start listening...'
                    : 'Speech not available',
          ),
          ElevatedButton(
              onPressed: () {
                _camera();
              },
              child: Text('Camera'))
        ],
      ),
    );
  }
}
