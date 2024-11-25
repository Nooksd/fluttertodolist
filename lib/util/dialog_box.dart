// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.amber[200],
      content: SizedBox(
        height: 300,
        width: 300,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
              child: TextField(
                controller: controller,
                keyboardType: TextInputType.multiline,
                maxLines: 6,
                maxLength: 95,
                autofocus: true,
                cursorColor: Colors.amber,
                decoration: const InputDecoration(
                  hintText: 'Oque tem que fazer?',
                  border: InputBorder.none,
                ),
              ),
            ),
            Positioned(
                top: 0,
                right: 0,
                child: FloatingActionButton(
                  onPressed: onCancel,
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                )),
            Positioned(
                bottom: 0,
                right: 0,
                child: FloatingActionButton(
                  onPressed: onSave,
                  elevation: 0,
                  backgroundColor: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Icon(
                    Icons.arrow_right_alt,
                    color: Colors.black,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
