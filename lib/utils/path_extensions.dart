import 'package:flutter/rendering.dart';

extension PathExtensions on Path {
  Path scale(double scaleFactor) {
    final matrix4 = Matrix4.identity()..scale(scaleFactor);
    // ignore: unnecessary_this
    return this.transform(matrix4.storage);
  }

  Offset offsetToZeroPosition() {
    // ignore: unnecessary_this
    final bounds = this.getBounds();
    return Offset(-bounds.left, -bounds.top);
  }

  Offset topLeftOffsetTo(Path path) {
    // ignore: unnecessary_this
    final bounds = this.getBounds();
    final targetBounds = path.getBounds();

    return Offset(
      targetBounds.width - bounds.width,
      targetBounds.height - bounds.height,
    );
  }
}

extension PathListExtension on List<Path> {
  Rect getBounds() {
    // ignore: unnecessary_this
    return this.fold(Path(), (Path result, path) {
      return Path.combine(PathOperation.union, result, path);
    }).getBounds();
  }
}
