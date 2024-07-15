import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, this.onTap, this.isLoading = false});
  void Function()? onTap;
  bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.tealAccent, borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator(color: Colors.black)
              : const Text(
                  "Add",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
        ),
      ),
    );
  }
}
