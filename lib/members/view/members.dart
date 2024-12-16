import 'package:flutter/material.dart';

class MembersPage extends StatelessWidget {
  const MembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isSmallScreen = MediaQuery.sizeOf(context).width < 600;
    return Stack(
      children: [
        const Column(),
        Positioned(
          right: isSmallScreen ? 16 : 24,
          bottom: isSmallScreen ? 16 : 24,
          child: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
