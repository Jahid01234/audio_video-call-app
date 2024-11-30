import 'package:flutter/material.dart';
import 'package:video_audio_call_app/screens/calling_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text("Video Audio Calling Ap"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Text field.....
              TextField(
                controller: textEditingController,
                decoration: const InputDecoration(
                  hintText: "Enter caller id",
                  border: OutlineInputBorder()
                ),
              ),
              const SizedBox(height: 30),
              // Button.......
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>CallingScreen(callId: textEditingController.text),
                      ),
                    );
                  },
                  child: const Text("Join"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
