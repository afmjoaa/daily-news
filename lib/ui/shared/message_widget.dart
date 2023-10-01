import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'loading/loading_cubit.dart';

import 'loading/loading_state.dart';

class MessageWidget extends StatefulWidget {
  final LoadingCubit loadingCubit;

  const MessageWidget({
    Key? key,
    required this.loadingCubit,
  }) : super(key: key);

  @override
  State<MessageWidget> createState() => _MessageWidgetState();
}

class _MessageWidgetState extends State<MessageWidget> {
  bool _visible = true;

  Widget _buildErrorTextBox(BuildContext context, LoadingState state) {
    var message = 'An Error Occurred';
    if (state is LoadingFailedState) message = state.errorMessage;

    return Flexible(
        child: Text(message, style: const TextStyle(color: Colors.white),)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _visible,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SafeArea(
            top: true,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(30),
                ),
              ),
              padding: const EdgeInsets.only(left: 16, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlocBuilder(
                    bloc: widget.loadingCubit,
                    builder: _buildErrorTextBox,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                    onPressed: () => widget.loadingCubit.resetLoading(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 10), () {
      if (mounted) { 
        setState(() { 
          _visible = false; 
        });
      }
    });
  }
}
