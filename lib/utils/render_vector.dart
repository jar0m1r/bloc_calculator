import 'dart:math' as math;
import 'dart:typed_data';
import 'dart:ui' show Picture, PictureRecorder, Rect, Size, hashValues;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RenderVector extends RenderBox {
  /// Creates a new [RenderPicture].
  RenderVector({
    PictureInfo picture,
    bool matchTextDirection = false,
    TextDirection textDirection,
    bool allowDrawingOutsideViewBox,
  })  : _picture = picture,
        _matchTextDirection = matchTextDirection,
        _textDirection = textDirection,
        _allowDrawingOutsideViewBox = allowDrawingOutsideViewBox;

  /// Optional color to use to draw a thin rectangle around the canvas.
  ///
  /// Only applied if asserts are enabled (e.g. debug mode).
  static Color debugRectColor;

  /// Whether to paint the picture in the direction of the [TextDirection].
  ///
  /// If this is true, then in [TextDirection.ltr] contexts, the picture will be
  /// drawn with its origin in the top left (the "normal" painting direction for
  /// pictures); and in [TextDirection.rtl] contexts, the picture will be drawn with
  /// a scaling factor of -1 in the horizontal direction so that the origin is
  /// in the top right.
  ///
  /// This is occasionally used with pictures in right-to-left environments, for
  /// pictures that were designed for left-to-right locales. Be careful, when
  /// using this, to not flip pictures with integral shadows, text, or other
  /// effects that will look incorrect when flipped.
  ///
  /// If this is set to true, [textDirection] must not be null.
  bool get matchTextDirection => _matchTextDirection;
  bool _matchTextDirection;
  set matchTextDirection(bool value) {
    assert(value != null);
    if (value == _matchTextDirection) {
      return;
    }
    _matchTextDirection = value;
    markNeedsPaint();
  }

  bool get _flipHorizontally =>
      _matchTextDirection && _textDirection == TextDirection.rtl;

  /// The text direction with which to resolve [alignment].
  ///
  /// This may be changed to null, but only after the [alignment] and
  /// [matchTextDirection] properties have been changed to values that do not
  /// depend on the direction.
  TextDirection get textDirection => _textDirection;
  TextDirection _textDirection;
  set textDirection(TextDirection value) {
    if (_textDirection == value) {
      return;
    }
    _textDirection = value;
    markNeedsPaint();
  }

  /// The information about the picture to draw.
  PictureInfo get picture => _picture;
  PictureInfo _picture;
  set picture(PictureInfo val) {
    if (val == picture) {
      return;
    }
    _picture = val;
    markNeedsPaint();
  }

  /// Whether to allow the rendering of this picture to exceed the
  /// [PictureInfo.viewport] bounds.
  ///
  /// Caution should be used around setting this parameter to true, as it
  /// may result in greater memory usage during rasterization.
  bool get allowDrawingOutsideViewBox => _allowDrawingOutsideViewBox;
  bool _allowDrawingOutsideViewBox;
  set allowDrawingOutsideViewBox(bool val) {
    if (val == _allowDrawingOutsideViewBox) {
      return;
    }

    _allowDrawingOutsideViewBox = val;
    markNeedsPaint();
  }

  @override
  bool hitTestSelf(Offset position) => true;

  @override
  bool get sizedByParent => true;

  @override
  // ignore: override_on_non_overriding_member
  Size computeDryLayout(BoxConstraints constraints) {
    return constraints.smallest;
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (picture == null || size == null || size == Size.zero) {
      return;
    }
    context.canvas.save();
    context.canvas.translate(offset.dx, offset.dy);
    if (_flipHorizontally) {
      context.canvas.translate(size.width, 0.0);
      context.canvas.scale(-1.0, 1.0);
    }

    // this is sometimes useful for debugging, e.g. to draw
    // a thin red border around the drawing.
    assert(() {
      if (RenderVector.debugRectColor != null &&
          RenderVector.debugRectColor.alpha > 0) {
        context.canvas.drawRect(
            Offset.zero & size,
            Paint()
              ..color = debugRectColor
              ..style = PaintingStyle.stroke);
      }
      return true;
    }());
    scaleCanvasToViewBoxHelper(
      context.canvas,
      size,
      _picture.viewport,
      _picture.size,
    );
    final Rect viewportRect = Offset.zero & _picture.viewport.size;
    if (allowDrawingOutsideViewBox != true) {
      context.canvas.clipRect(viewportRect);
    }
    context.canvas.drawPicture(picture.picture);
    context.canvas.restore();
  }
}

/// Scales a [Canvas] to a given [viewBox] based on the [desiredSize]
/// of the widget.
void scaleCanvasToViewBoxHelper(
  Canvas canvas,
  Size desiredSize,
  Rect viewBox,
  Size pictureSize,
) {
  if (desiredSize != viewBox.size) {
    final double scale = math.min(
      desiredSize.width / viewBox.width,
      desiredSize.height / viewBox.height,
    );
    final Size scaledHalfViewBoxSize = viewBox.size * scale / 2.0;
    final Size halfDesiredSize = desiredSize / 2.0;
    final Offset shift = Offset(
      halfDesiredSize.width - scaledHalfViewBoxSize.width,
      halfDesiredSize.height - scaledHalfViewBoxSize.height,
    );
    canvas.translate(shift.dx, shift.dy);
    canvas.scale(scale, scale);
  }
}

@immutable
class PictureInfo {
  /// Creates a new PictureInfo object.
  const PictureInfo({
    @required this.picture,
    @required this.viewport,
    this.size = Size.infinite,
  })  : assert(picture != null),
        assert(viewport != null),
        assert(size != null);

  /// The raw picture.
  ///
  /// This is the object to pass to the [Canvas.drawPicture] when painting.
  final Picture picture;

  /// The viewport enclosing the coordinates used in the picture.
  final Rect viewport;

  /// The requested size for this picture, which may be different than the
  /// [viewport.size].
  final Size size;

  @override
  int get hashCode => hashValues(picture, viewport, size);

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is PictureInfo &&
        other.picture == picture &&
        other.viewport == viewport &&
        other.size == size;
  }
}

class VectorRenderWidget extends SingleChildRenderObjectWidget {
  const VectorRenderWidget({
    Key key,
    @required this.picture,
    Widget child,
  })  : assert(picture != null),
        super(key: key, child: child);

  final PictureInfo picture;

  @override
  RenderVector createRenderObject(BuildContext context) {
    return RenderVector(
      picture: picture,
    );
  }

  @override
  void updateRenderObject(BuildContext context, RenderVector renderObject) {
    renderObject.picture = picture;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('picture', picture.toString()));
  }
}

/// The root element of a drawable.
class DrawableRoot {
  const DrawableRoot({
    this.id,
    this.viewport,
    this.children,
    this.transform,
  });

  /// The expected coordinates used by child paths for drawing.
  final String id;
  final Rect viewport;
  final Float64List transform;
  final List<Path> children;

  /// Scales the `canvas` so that the drawing units in this [Drawable]
  /// will scale to the `desiredSize`.
  ///
  /// If the `viewBox` dimensions are not 1:1 with `desiredSize`, will scale to
  /// the smaller dimension and translate to center the image along the larger
  /// dimension.
  void scaleCanvasToViewBox(Canvas canvas, Size desiredSize) {
    scaleCanvasToViewBoxHelper(
      canvas,
      desiredSize,
      viewport,
      viewport.size,
    );
  }

  /// Clips the canvas to a rect corresponding to the `viewBox`.
  void clipCanvasToViewBox(Canvas canvas) {
    canvas.clipRect(viewport);
  }

  void draw(Canvas canvas, Rect bounds) {
    if (transform != null) {
      canvas.save();
      canvas.transform(transform);
    }
    final viewportOffset = Offset(viewport.width, viewport.height);
    if (viewportOffset != Offset.zero) {
      canvas.translate(viewportOffset.dx, viewportOffset.dy);
    }
    for (Drawable child in children) {
      child.draw(canvas, viewport);
    }

    if (transform != null) {
      canvas.restore();
    }
    if (viewportOffset != Offset.zero) {
      canvas.restore();
    }
  }

  /// Creates a [Picture] from this [DrawableRoot].
  ///
  /// Be cautious about not clipping to the ViewBox - you will be
  /// allowing your drawing to take more memory than it otherwise would,
  /// particularly when it is eventually rasterized.
  Picture toPicture({
    Size size,
    bool clipToViewBox = true,
    ColorFilter colorFilter,
  }) {
    final PictureRecorder recorder = PictureRecorder();
    final Canvas canvas = Canvas(recorder, viewport);
    if (colorFilter != null) {
      canvas.saveLayer(null, Paint()..colorFilter = colorFilter);
    } else {
      canvas.save();
    }
    if (size != null) {
      scaleCanvasToViewBox(canvas, size);
    }
    if (clipToViewBox == true) {
      clipCanvasToViewBox(canvas);
    }

    draw(canvas, viewport);
    canvas.restore();
    return recorder.endRecording();
  }
}
