import 'package:flutter/rendering.dart';

extension PathExtensions on Path {
  Path scale(double scaleFactor) {
    final matrix4 = Matrix4.identity()..scale(scaleFactor);
    return this.transform(matrix4.storage);
  }

  Offset offsetToZeroPosition() {
    final bounds = this.getBounds();
    return Offset(-bounds.left, -bounds.top);
  }

  Offset topLeftOffsetTo(Path path) {
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
    return this.fold(Path(), (Path result, path) {
      return Path.combine(PathOperation.union, result, path);
    }).getBounds();
  }
}
