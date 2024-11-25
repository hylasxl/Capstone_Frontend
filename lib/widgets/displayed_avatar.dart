import 'package:flutter/material.dart';

class DisplayedAvatar extends StatelessWidget {
  final String avatarUrl;
  const DisplayedAvatar({super.key, required this.avatarUrl});

  @override
  Widget build(BuildContext context) {
    bool isPng = avatarUrl.toLowerCase().endsWith('.png');
    return ClipOval(
      child: SizedBox(
        width: 40,
        height: 40,
        child: Stack(
          fit: StackFit.expand,
          children: [
            if (!isPng)
              Container(color: Colors.white),
            Image.network(
              avatarUrl,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
