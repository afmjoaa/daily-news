import 'package:flutter/material.dart';

class OverlayWidget extends StatelessWidget {

  const OverlayWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Opacity(
      child: ModalBarrier(dismissible: true, color: Colors.black),
      opacity: 0.7,
    );
  }
}
