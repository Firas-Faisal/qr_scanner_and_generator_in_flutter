import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_scanner_and_generator_in_flutter/screen/scan_qr_code/controller/controller_scan_qr.dart';

class ScanQRCode extends StatelessWidget {
  final ScanQRCodeController qrController = Get.put(ScanQRCodeController());

  ScanQRCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code Scanner'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 30),
            // Titlge
            const Text(
              'Result:',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            // Reactive display of QR code result
            Obx(() => Text(
                  qrController.qrResult.value, // Reactive binding to the result
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                )),
            const SizedBox(height: 30),
            // Button to scan QR code
            ElevatedButton(
              onPressed: qrController
                  .scanQR, // Call the scan method from the controller
              child: const Text('Scan Code'),
            ),
          ],
        ),
      ),
    );
  }
}
