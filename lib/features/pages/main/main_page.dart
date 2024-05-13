import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView.separated(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Center(
              child: Container(
                width: 100,
                height: 100,
                color: Color.fromARGB(255, index * 50, 255 - index * 25, 0),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 10),
        ),
      ),
    );
  }
}
