import 'package:get/get.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanQRCodeController extends GetxController {
  var qrResult = 'Scanned Data will appear here'.obs; // Observable string

  // Method to scan QR code
  Future<void> scanQR() async {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
      if (qrCode != "-1") {
        qrResult.value = qrCode; // Update the result when a QR code is scanned
      }
    } catch (e) {
      qrResult.value = 'Failed to read QR code';
    }
  }
}
