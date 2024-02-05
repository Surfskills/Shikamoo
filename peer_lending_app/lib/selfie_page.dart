import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class SelfiePage extends StatefulWidget {
  const SelfiePage({Key? key}) : super(key: key);

  @override
  State<SelfiePage> createState() => _SelfiePageState();
}

class _SelfiePageState extends State<SelfiePage> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;



  @override
  void initState() {
    super.initState();
    _initializeControllerFuture = _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    _controller = CameraController(
      cameras.firstWhere(
        (camera) => camera.lensDirection == CameraLensDirection.front,
        orElse: () => cameras[0],
      ),
      ResolutionPreset.medium,
    );
    await _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/app_logo.png', // Replace with your app's logo
            height: 30.0,
            width: 30.0,
          ),
        ), 

      ),
      body: Expanded(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                'Take a selfie!',
                style: TextStyle(fontSize: 24.0),
              ),
                              Text(
                'Take a selfie!',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
                              Text(
                'Take a selfie!',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
                              Text(
                'Take a selfie!',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
                // Camera preview
                Expanded(
                  child: FutureBuilder<void>(
                    future: _initializeControllerFuture,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        final size = MediaQuery.of(context).size;
                        final double diameter = size.width / 1.8;
                          
                        return Column(
                          children: [
                            SizedBox(height: 16.0),
                            ClipOval(
                              child: Container(
                                width: diameter,
                                height: diameter,
                                child: CameraPreview(_controller),
                              ),
                            ),
                            SizedBox(height: 16.0),
                          ],
                        );
                      } else {
                        return Center(child: CircularProgressIndicator());
                      }
                    },
                  ),
                ),
                // Floating Action Button for capturing selfie
                FloatingActionButton(
                  onPressed: () async {
                    try {
                      await _initializeControllerFuture;
                      final image = await _controller.takePicture();
                      // Process the captured selfie image as needed
                    } catch (e) {
                      print(e);
                    }
                  },
                  child: Icon(Icons.camera),
                ),
                SizedBox(height: 16.0),
                // Submit Selfie Button
                ElevatedButton(
                  onPressed: () {
                    // Handle selfie submission logic
                    // Add logic to process the captured selfie
                  },
                  child: Text('Submit'),
                ),
                SizedBox(height: 16.0),
                // Complete Your Verification Button
                ElevatedButton(
                  onPressed: () {
                    // Handle "Complete Your Verification" button press
                    // Add logic to proceed after submitting the selfie
                    Navigator.of(context).pushNamed('/business_dashboard_page');
                  },
                  child: Text('Complete Your Verification'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
