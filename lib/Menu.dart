import 'package:diaspora/utils/colors.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors_selector.tertiaryColor,
      appBar: AppBar(
        backgroundColor: Colors_selector.tertiaryColor,
        elevation: 0, // Set elevation to 0 to remove shadow
        automaticallyImplyLeading: false,
        actions: [
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              color: Colors_selector.pair1,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 5)
              ],
            ),
            child: Material(
              color: Colors_selector.tertiaryColor,
              child: IconButton(
                icon: const Icon(
                  Icons.cancel_rounded,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Menu()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [Container()],
      )),
    );
  }
}
