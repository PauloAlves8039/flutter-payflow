import 'package:camera/camera.dart';

class BarcodeScannerStatus {
  final bool isCameraAvalable;
  final String error;
  final String barcode;
  final bool stopScanner;

  BarcodeScannerStatus({
    this.isCameraAvalable = false,
    this.error = "",
    this.barcode = "",
    this.stopScanner = false,
  });

  factory BarcodeScannerStatus.available() =>
      BarcodeScannerStatus(isCameraAvalable: true, stopScanner: false);

  factory BarcodeScannerStatus.error(String message) =>
      BarcodeScannerStatus(error: message, stopScanner: true);

  factory BarcodeScannerStatus.barcode(String barcode) =>
      BarcodeScannerStatus(barcode: barcode, stopScanner: true);

  bool get showCamera => isCameraAvalable && error.isEmpty;

  bool get hasError => error.isNotEmpty;

  bool get hasBarcode => barcode.isNotEmpty;
}
