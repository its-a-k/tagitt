import 'dart:io';
import 'dart:math';
import 'package:image/image.dart' as img;
import 'package:path_provider/path_provider.dart';

Future comopseImage() async {
  final image1 = img.decodePng(File('imageA.jpg').readAsBytesSync());
  final image2 = img.decodePng(File('imageB.jpg').readAsBytesSync());
  final mergedImage = img.Image(
      width: (image1 == null ? 100 : image1.width) +
          (image2 == null ? 100 : image2.width),
      height: max(image1!.height, image2!.height));
  // mergedImage.c
// final ja = img. copyInto(mergedImage, image1, blend = false);
// img.copyInto(mergedImage, image2, dstx = image1.width, blend = false);

  final documentDirectory = await getApplicationDocumentsDirectory();
  final file = File("${documentDirectory.path}/merged_image.jpg");
  file.writeAsBytesSync(img.encodeJpg(mergedImage));
}


// final GlobalKey globalKey = GlobalKey();

// Future<Uint8List> captureWidget({required GlobalKey globalKey}) async {
//   final RenderRepaintBoundary boundary =
//       globalKey.currentContext.findRenderObject();

//   final ui.Image image = await boundary.toImage();

//   final ByteData? byteData =
//       await image.toByteData(format: ui.ImageByteFormat.png);

//   final Uint8List pngBytes = byteData!.buffer.asUint8List();

//   return pngBytes;
// }
