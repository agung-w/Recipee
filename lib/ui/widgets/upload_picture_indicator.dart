import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class UploadPictureIndicator extends StatelessWidget {
  final UploadTask? uploadTask;

  const UploadPictureIndicator({super.key, required this.uploadTask});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: uploadTask?.snapshotEvents,
        builder: (_, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data!;
            double progress = data.bytesTransferred / data.totalBytes;
            return SizedBox(
              height: 5,
              width: 100,
              child: Column(
                children: [
                  LinearProgressIndicator(
                    value: progress,
                    backgroundColor: Colors.grey,
                    color: Colors.green,
                  ),
                  Text('${(100 * progress).round()}')
                ],
              ),
            );
          } else {
            return const SizedBox();
          }
        });
  }
}
