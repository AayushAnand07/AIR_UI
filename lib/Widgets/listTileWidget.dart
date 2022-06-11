import 'package:flutter/material.dart';
import 'DialogueBox.dart';

class ListTileWidget extends StatelessWidget {
  final String url;
  final String name;
  final String email;
  const ListTileWidget({Key? key, required this.url, required this.name, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 30.0,
      leading: GestureDetector(
        onTap: () {
          showCustomDialog(context, url, name, email);
        },
        child: CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(url),
        ),
      ),
      title: Text(
        name,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
