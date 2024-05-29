import 'package:flutter/material.dart';

class VerifyCodePage extends StatelessWidget {
  const VerifyCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 100)),
          SliverToBoxAdapter(
            child: Center(
              child: Text('VerifyCodePage'),
            ),
          ),
        ],
      ),
    );
  }
}
