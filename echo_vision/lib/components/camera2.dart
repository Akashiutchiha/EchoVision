import 'dart:core';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:tflite/tflite.dart';
import 'package:echo_vision/main.dart';

/// CameraApptwo is the Main Application.
class CameraApptwo extends StatefulWidget {
  /// Default Constructor
  CameraApptwo({Key? key}) : super(key: key);

  @override
  State<CameraApptwo> createState() => _CameraApptwoState();
}

class _CameraApptwoState extends State<CameraApptwo> {
  CameraImage? cameraImage;

  late CameraController controller;

  List<dynamic>? results;

  String output = '';

  @override
  void initState() { 
    super.initState();
    loadModel();
    loadCamera();
  }

  @override
  void dispose() {
    controller.dispose();
    Tflite.close();
    super.dispose();
  }

  loadCamera() async {
    controller = CameraController(cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      } else {
        setState(() {
          controller.startImageStream((image) {
            cameraImage = image;
            runModel();
          });
        });
      }
    });
  }

  runModel() async {
    if (cameraImage != null) {
      var predictions = await Tflite.runModelOnFrame(
        bytesList: cameraImage!.planes.map((plane) {
          return plane.bytes;
        }).toList(),
        imageHeight: cameraImage!.height,
        imageWidth: cameraImage!.width,
        imageMean: 127.5,
        imageStd: 127.5,
        rotation: 90,
        numResults: 2,
        threshold: 0.1,
        asynch: true,
      );
      for (var element in predictions!) {
        setState(() {
          output = element['label'] + ' ' + "${element['confidence']}";
        });
      }
    }
  }

  loadModel() async {
    await Tflite.loadModel(
      model: 'assets/model/model.tflite',
      labels: 'assets/model/label.txt',
    );
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Expanded(child: CameraPreview(controller)),
            Center(
              child: Positioned(
                bottom: 150,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Color.fromARGB(137, 255, 255, 255),
                  child: Text(
                    output,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
