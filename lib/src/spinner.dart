import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:load_switch/src/spin_styles.dart';

/// A stateless widget that displays various spinner styles for the LoadSwitch.
///
/// This widget provides better performance compared to the function-based approach
/// by allowing Flutter to cache and reuse the widget instances.
class SpinnerWidget extends StatelessWidget {
  const SpinnerWidget({
    Key? key,
    required this.style,
    required this.value,
    required this.size,
    required this.width,
    this.color,
    this.animationDuration,
  }) : super(key: key);

  final SpinStyle style;
  final bool value;
  final double size;
  final double width;
  final Color? color;
  final Duration? animationDuration;

  @override
  Widget build(BuildContext context) {
    final effectiveColor = color ?? Colors.blue;
    final effectiveDuration =
        animationDuration ?? const Duration(milliseconds: 1200);
    switch (style) {
      case SpinStyle.material:
        return CircularProgressIndicator(
          strokeWidth: width,
          valueColor: AlwaysStoppedAnimation<Color>(effectiveColor),
        );
      case SpinStyle.cupertino:
        return CupertinoActivityIndicator(
          radius: width * 0.3,
        );
      case SpinStyle.chasingDots:
        return SpinKitChasingDots(
          color: effectiveColor,
          size: size,
          duration: effectiveDuration,
        );
      case SpinStyle.circle:
        return SpinKitCircle(
          color: effectiveColor,
          size: size,
          duration: effectiveDuration,
        );
      case SpinStyle.cubeGrid:
        return SpinKitCubeGrid(
          color: effectiveColor,
          size: size,
          duration: effectiveDuration,
        );
      case SpinStyle.dancingSquare:
        return SpinKitDancingSquare(
          color: effectiveColor,
          size: size,
          duration: effectiveDuration,
        );
      case SpinStyle.doubleBounce:
        return SpinKitDoubleBounce(
          color: effectiveColor,
          size: size,
          duration: effectiveDuration,
        );
      case SpinStyle.dualRing:
        return SpinKitDualRing(
          color: effectiveColor,
          lineWidth: width,
          duration: effectiveDuration,
          size: size,
        );
      case SpinStyle.fadingCircle:
        return SpinKitFadingCircle(
          color: effectiveColor,
          size: size,
          duration: effectiveDuration,
        );
      case SpinStyle.fadingCube:
        return SpinKitFadingCube(
          color: effectiveColor,
          duration: effectiveDuration,
          size: size,
        );
      case SpinStyle.fadingFour:
        return SpinKitFadingFour(
          color: effectiveColor,
          duration: effectiveDuration,
          size: size,
        );
      case SpinStyle.fadingGrid:
        return SpinKitFadingGrid(
          color: effectiveColor,
          duration: effectiveDuration,
          size: size,
        );
      case SpinStyle.foldingCube:
        return SpinKitFoldingCube(
          color: effectiveColor,
          duration: effectiveDuration,
          size: size,
        );
      case SpinStyle.hourGlass:
        return SpinKitHourGlass(
          color: effectiveColor,
          size: size,
          duration: effectiveDuration,
        );
      case SpinStyle.pianoWave:
        return SpinKitPianoWave(
          color: effectiveColor,
          size: size,
          duration: effectiveDuration,
        );
      case SpinStyle.pouringHourGlass:
        return SpinKitPouringHourGlass(
          color: effectiveColor,
          size: size,
          duration: effectiveDuration,
        );
      case SpinStyle.pulse:
        return SpinKitPulse(
          color: effectiveColor,
          size: size,
          duration: effectiveDuration,
        );
      case SpinStyle.pulsingGrid:
        return SpinKitPulsingGrid(
          color: effectiveColor,
          size: size,
          duration: effectiveDuration,
        );
      case SpinStyle.pumpingHeart:
        return SpinKitPumpingHeart(
          color: effectiveColor,
          size: size,
          duration: effectiveDuration,
        );
      case SpinStyle.ring:
        return SpinKitRing(
          color: effectiveColor,
          size: size,
          lineWidth: width,
          duration: effectiveDuration,
        );
      case SpinStyle.ripple:
        return SpinKitRipple(
          color: effectiveColor,
          borderWidth: width,
          size: size,
          duration: effectiveDuration,
        );
      case SpinStyle.rotatingCircle:
        return SpinKitRotatingCircle(
          color: effectiveColor,
          size: size,
          duration: effectiveDuration,
        );
      case SpinStyle.rotatingPlain:
        return SpinKitRotatingPlain(
          color: effectiveColor,
          size: size,
          duration: effectiveDuration,
        );
      case SpinStyle.spinningCircle:
        return SpinKitSpinningCircle(
          color: effectiveColor,
          size: size,
          duration: effectiveDuration,
        );
      case SpinStyle.spinningLines:
        return SpinKitSpinningLines(
          color: effectiveColor,
          size: size,
          duration: effectiveDuration,
        );
      case SpinStyle.squareCircle:
        return SpinKitSquareCircle(
          color: effectiveColor,
          size: size,
          duration: effectiveDuration,
        );
      case SpinStyle.threeBounce:
        return SpinKitThreeBounce(
          color: effectiveColor,
          size: size * 0.5,
          duration: effectiveDuration,
        );
      case SpinStyle.threeInOut:
        return SpinKitThreeInOut(
          color: effectiveColor,
          size: size * 0.5,
          duration: effectiveDuration,
        );
      case SpinStyle.wanderingCubes:
        return SpinKitWanderingCubes(
          color: effectiveColor,
          size: size,
          duration: effectiveDuration,
        );
      case SpinStyle.waveStart:
        return SpinKitWave(
          color: effectiveColor,
          size: size,
          type: SpinKitWaveType.start,
          duration: effectiveDuration,
        );
      case SpinStyle.waveCenter:
        return SpinKitWave(
          color: effectiveColor,
          size: size,
          type: SpinKitWaveType.center,
          duration: effectiveDuration,
        );
      case SpinStyle.waveEnd:
        return SpinKitWave(
          color: effectiveColor,
          size: size,
          type: SpinKitWaveType.end,
          duration: effectiveDuration,
        );
      case SpinStyle.waveSpinner:
        return SpinKitWave(
          color: effectiveColor,
          size: size,
          duration: effectiveDuration,
        );
    }
  }
}
