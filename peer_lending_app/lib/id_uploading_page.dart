import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class IdUploadingPage extends StatefulWidget {
  const IdUploadingPage({Key? key}) : super(key: key);

  @override
  State<IdUploadingPage> createState() => _IdUploadingPageState();
}

class _IdUploadingPageState extends State<IdUploadingPage> {
  late CameraController _controller;
  late Future<void>? _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _initializeControllerFuture = _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();

    // Use the back camera
    _controller = CameraController(
      cameras.firstWhere((camera) => camera.lensDirection == CameraLensDirection.back),
      ResolutionPreset.medium,
    );

    // Initialize the controller
    await _controller.initialize();
  }

  @override
  void dispose() {
    // Dispose of the camera controller when the widget is disposed
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Take a Photo',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              // Camera preview
              Expanded(
                child: FutureBuilder<void>(
                  future: _initializeControllerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      // If the Future is complete, display the camera preview
                      return CameraPreview(_controller);
                    } else {
                      // Otherwise, display a loading indicator
                      return Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              ),
              SizedBox(height: 16.0),
              // Floating camera icon
              FloatingActionButton(
                onPressed: () async {
                  try {
                    await _initializeControllerFuture;
                    final image = await _controller.takePicture();
                    // Process the captured image as needed
                  } catch (e) {
                    print(e);
                  }
                },
                child: Icon(Icons.camera),
              ),
              SizedBox(height: 16.0),
              // Submit Button
              ElevatedButton(
                onPressed: () {
                  // Handle submission logic
                  // Add logic to process the captured image
                },
                child: Text('Submit'),
              ),
              SizedBox(height: 16.0),
              // Complete Verification Button
              ElevatedButton(
                onPressed: () {
                  // Handle "Complete Verification" button press
                  // Add logic to proceed after submitting the photo
                  Navigator.of(context).pushNamed('/selfie_page');
                },
                child: Text('Continue'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
