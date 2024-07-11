import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){},
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(5), 
          color: const Color.fromARGB(255, 48, 46, 46)
        ),
        child: const Icon(Icons.search,size: 32,color: Colors.white,),
      ),
    );
  }
}