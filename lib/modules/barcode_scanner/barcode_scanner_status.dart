import 'package:camera/camera.dart';

class BarcodeScannerStatus {
  final bool isCameraAvalable;
  final String error;
  final String barcode;

  CameraController? cameraController;

  BarcodeScannerStatus({
    this.isCameraAvalable = false,
    this.cameraController,
    this.error = "",
    this.barcode = "",
  });

  factory BarcodeScannerStatus.available(CameraController controller) =>
      BarcodeScannerStatus(
        isCameraAvalable: true,
        cameraController: controller,
      );

  factory BarcodeScannerStatus.error(String message) =>
      BarcodeScannerStatus(error: message);

  factory BarcodeScannerStatus.barcode(String barcode) =>
      BarcodeScannerStatus(barcode: barcode);

  bool get showCamera => isCameraAvalable && error.isEmpty;

  bool get hasError => error.isNotEmpty;

  bool get hasBarcode => barcode.isNotEmpty;
}