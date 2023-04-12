// import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';
// import 'package:tflite/tflite.dart';
// import 'package:echo_vision/main.dart';

// /// CameraApp is the Main Application.
// class CameraApp extends StatefulWidget {
//   /// Default Constructor
//   const CameraApp({Key? key}) : super(key: key);

//   @override
//   State<CameraApp> createState() => _CameraAppState();
// }

// class _CameraAppState extends State<CameraApp> {
//   CameraImage? cameraImage;
//   late CameraController controller;
//   List<dynamic>? results;
//   bool isDetecting = false;

//   @override
//   void initState() {
//     super.initState();
//     loadModel().then((value) {
//       setState(() {
//         results;
//       });
//     });
//     controller = CameraController(cameras[0], ResolutionPreset.max);
//     controller.initialize().then((_) {
//       if (!mounted) {
//         return;
//       }
//       setState(() {
//         controller.startImageStream((image) {
//           cameraImage = image;
//           if (!isDetecting) {
//             isDetecting = true;
//             Tflite.runModelOnFrame(
//               bytesList: image.planes.map((plane) {
//                 return plane.bytes;
//               }).toList(),
//               imageHeight: image.height,
//               imageWidth: image.width,
//               imageMean: 127.5,
//               imageStd: 127.5,
//               rotation: 90,
//               numResults: 2,
//               threshold: 0.1,
//               asynch: true,
//             ).then((recognitions) {
//               setState(() {
//                 results = recognitions;
//               });
//               isDetecting = false;
//             });
//           }
//         });
//       });
//     }).catchError((Object e) {
//       if (e is CameraException) {
//         switch (e.code) {
//           case 'CameraAccessDenied':
//             // Handle access errors here.
//             break;
//           default:
//             // Handle other errors here.
//             break;
//         }
//       }
//     });
//   }

//   Future loadModel() async {
//     await Tflite.loadModel(
//       model: 'assets/model/model.tflite',
//       labels: 'assets/model/label.txt',
//       numThreads: 1,
//       isAsset: true,
//     );
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     Tflite.close();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (!controller.value.isInitialized) {
//       return Container();
//     }
//     return MaterialApp(
//       home: Scaffold(
//         body: Stack(
//           children: [
//             Expanded(child: CameraPreview(controller)),
//             Center(
//               child: Positioned(
//                 bottom: 150,
//                 child: Container(
//                   padding: const EdgeInsets.all(10),
//                   color: Color.fromARGB(137, 255, 255, 255),
//                   child: Text(
//                     results != null ? results![0]['label'] : 'analyzing...',
//                     style: const TextStyle(
//                       color: Colors.white,
//                       fontSize: 30.0,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
