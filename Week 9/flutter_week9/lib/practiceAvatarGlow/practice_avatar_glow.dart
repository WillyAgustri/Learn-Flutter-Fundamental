import 'package:flutter/material.dart';
// avatar glow
import 'package:avatar_glow/avatar_glow.dart';

class practice_avatar_glow extends StatefulWidget {
  const practice_avatar_glow({super.key});

  @override
  State<practice_avatar_glow> createState() => _practice_avatar_glowState();
}

class _practice_avatar_glowState extends State<practice_avatar_glow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice Avatar Glow"),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: AvatarGlow(
            startDelay: const Duration(milliseconds: 1000),
            glowColor: const Color.fromARGB(255, 173, 40, 40),
            glowShape: BoxShape.circle,
            animate: true,
            curve: Curves.fastOutSlowIn,
            child: const Material(
              elevation: 8.0,
              shape: CircleBorder(),
              color: Colors.transparent,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://raw.githubusercontent.com/apgapg/avatar_glow/master/src/app.gif"),
                radius: 10.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
