import 'package:flutter/material.dart';
// avatar glow
import 'package:avatar_glow/avatar_glow.dart';

class practice_avatar_glow extends StatelessWidget {
  const practice_avatar_glow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice Avatar Glow"),
      ),
      body: Center(
          child: AvatarGlow(
              child: CircleAvatar(
        child: Image(
            image: NetworkImage(
                "https://demos.themeselection.com/materio-html-django-admin-template-free/static/img/illustrations/trophy.png")),
      ))),
    );
  }
}
