import 'package:flutter/material.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListTile(
                  title: const Text("Flutter tips",
                      style: TextStyle(color: Colors.black, fontSize: 32)),
                  subtitle: const Text("u can learn flutter with the best way",
                      style: TextStyle(
                          color: Color.fromARGB(255, 126, 120, 120),
                          fontSize: 20)),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.delete, color: Colors.black))),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 230),
              child: Text("July 11 2024",
                  style: TextStyle(color: Color.fromARGB(255, 126, 120, 120))),
            ),
          ],
        ),
      ),
    );
  }
}
