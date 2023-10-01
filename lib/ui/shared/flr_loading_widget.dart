import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class FlrLoadingWidget extends StatelessWidget {
  const FlrLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 150,
          height: 150,
          decoration: const BoxDecoration(color: Colors.white),
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: FlareActor(
              "assets/loading.flr",
              alignment: Alignment.center,
              fit: BoxFit.fill,
              animation: "Aura",
            ),
          ),
        ),
      ),
    );
  }
}
