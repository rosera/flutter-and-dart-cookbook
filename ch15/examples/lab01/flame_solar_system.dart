import 'dart:async';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flame/components.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Flame.device.setPortrait();
  final gameSolarSystem = SolarSystemExample();

  runApp(GameWidget(game: gameSolarSystem));
}

class SolarSystemExample extends FlameGame {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    add(SunComponent());
    add(HeaderComponent());
    add(Mercury(0.001, 10.0, Vector2(40.0, 40.0), "Mercury"));
    add(Venus(0.004, 20.0, Vector2(80.0, 80.0), "Venus"));
    add(Earth(0.006, 20.0, Vector2(140.0, 140.0), "Earth"));
    add(Mars(0.008, 30.0, Vector2(180.0, 180.0), "Mars"));
  }
}

// Abstract Class implementation template for a Planet
abstract class OrreryModel {
  String name      = "";
  double velocity  = 0.0;
  double size      = 0.0;
  Vector2 distance = Vector2(0.0, 0.0);

  void orreryModelRotation(Canvas c, double r, Vector2 xy);
  void orreryModelPosition(Canvas c, double s, Vector2 xy, Vector2 xyMiddle);
  void orreryModelLabel(Canvas c, String t, Vector2 xy);
}

class HeaderComponent extends Component with HasGameRef {
  Vector2 coordsHeaderPosition = Vector2(0.0, 0.0);

  final paint = Paint()..color = Colors.yellow;

  @override
  void update(double dt) {
    coordsHeaderPosition.x = gameRef.size.x * .35;
    coordsHeaderPosition.y = gameRef.size.y * .05;
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    
    final textPaint = TextPaint(
    style: const TextStyle(
        color: Colors.white, fontSize: 24.0, fontFamily: 'Awesome Font'));

    textPaint.render(canvas, "Welcome to the Solar System", coordsHeaderPosition);
  }
}


class SunComponent extends Component with HasGameRef {
  Vector2 coordsSunPosition = Vector2(0.0, 0.0);

  final paint = Paint()..color = Colors.yellow;

  @override
  void update(double dt) {
    coordsSunPosition.x = gameRef.size.x / 2;
    coordsSunPosition.y = gameRef.size.y / 2;
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    canvas.drawCircle(
      Offset(coordsSunPosition.x, coordsSunPosition.y), 25, paint);
  }
}



class Mercury extends Component with HasGameRef implements OrreryModel {
  @override
  String name       = "";
  @override
  double velocity   = 0.0;
  @override
  double size       = 0.0;
  @override
  Vector2 distance  = Vector2(0.0, 0.0);
  
  double anglePlanetRotation   = 0.0;
  final paint = Paint()..color = Colors.red;
  Vector2 coordsPlanetPosition = Vector2(0.0, 0.0);
  
  Mercury(v, s, o, t) {
    velocity = v; // Orbit Rotation velocity
    size     = s; // Planet size dimension
    distance = o; // Planet Orbit Ring size
    name     = t; // The name of the planet
  }

  @override
  void update(double dt) {
    super.update(dt);

    coordsPlanetPosition.x = gameRef.size.x / 2;
    coordsPlanetPosition.y = gameRef.size.y / 2;
    anglePlanetRotation   += velocity - dt;
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);

    orreryModelPosition(canvas, size, distance, coordsPlanetPosition);
  }

  
  @override
  void orreryModelPosition(Canvas canvas, double size, Vector2 planetOffset, Vector2 viewportMidPoint) {
    
    // Dynamic planet rotation
    canvas.save();

    // Translate from origin to the middle of the screen
    canvas.translate(viewportMidPoint.x, viewportMidPoint.y);
    // (Distance + Size + Size/2) / Distance = 1.375 Radius increment
    orreryModelRotation(canvas, planetOffset.x * 1.375, Vector2(0.0,0.0));  
    
    orreryModelLabel(canvas, name, planetOffset);
    // Set rotation angle around translation point
    canvas.rotate(anglePlanetRotation);

    // Draw the Circle - [x,y] coordinates from the centre
    canvas.drawCircle(Offset(planetOffset.x, planetOffset.y), size, paint);

    // Reset the translation to the origin
    canvas.translate(-(viewportMidPoint.x), -(viewportMidPoint.y));
    canvas.restore();
  }
  
  @override
  void orreryModelRotation(Canvas canvas, double radius, Vector2 ringPosition) {
    final paintStroke = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1
      ..isAntiAlias = true
      ..style = PaintingStyle.stroke;

    // Static content
    canvas.drawCircle(
        Offset(ringPosition.x, ringPosition.y), radius, paintStroke);
  }

  @override
  void orreryModelLabel(Canvas canvas, String title, Vector2 distance) {
    final textPaint = TextPaint(
        style: const TextStyle(
            color: Colors.white, fontSize: 10.0, fontFamily: 'Awesome Font'));

    textPaint.render(canvas, title, distance);
  }
}


class Venus extends Component with HasGameRef implements OrreryModel {
  @override
  String name       = "";
  @override
  double velocity   = 0.0;
  @override
  double size       = 0.0;
  @override
  Vector2 distance  = Vector2(0.0, 0.0);
  
  double anglePlanetRotation   = 0.0;
  final paint = Paint()..color = Colors.green;
  Vector2 coordsPlanetPosition = Vector2(0.0, 0.0);
  
  Venus(v, s, o, t) {
    velocity = v; // Orbit Rotation velocity
    size     = s; // Planet size dimension
    distance = o; // Planet Orbit Ring size
    name     = t; // The name of the planet
  }

  @override
  void update(double dt) {
    super.update(dt);

    coordsPlanetPosition.x = gameRef.size.x / 2;
    coordsPlanetPosition.y = gameRef.size.y / 2;
    anglePlanetRotation   += velocity - dt;
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);

    orreryModelPosition(canvas, size, distance, coordsPlanetPosition);
  }

  
  @override
  void orreryModelPosition(Canvas canvas, double size, Vector2 planetOffset, Vector2 viewportMidPoint) {
    
    // Dynamic planet rotation
    canvas.save();

    // Translate from origin to the middle of the screen
    canvas.translate(viewportMidPoint.x, viewportMidPoint.y);
    orreryModelRotation(canvas, planetOffset.x * 1.375, Vector2(0.0,0.0));
//     print('Venus radius: ${planetOffset.x * 1.375}');
    orreryModelLabel(canvas, name, planetOffset);
    // Set rotation angle around translation point
    canvas.rotate(anglePlanetRotation);

    // Draw the Circle - [x,y] coordinates from the centre
    canvas.drawCircle(Offset(planetOffset.x, planetOffset.y), size, paint);
//     print('Venus planet: $planetOffset');

    // Reset the translation to the origin
    canvas.translate(-(viewportMidPoint.x), -(viewportMidPoint.y));
    canvas.restore();
  }
  

  @override
  void orreryModelRotation(Canvas canvas, double radius, Vector2 ringPosition) {
    final paintStroke = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1
      ..isAntiAlias = true
      ..style = PaintingStyle.stroke;
    
    // Static content
    canvas.drawCircle(
        Offset(ringPosition.x, ringPosition.y), radius, paintStroke);
  }

  @override
  void orreryModelLabel(Canvas canvas, String title, Vector2 distance) {
    final textPaint = TextPaint(
        style: const TextStyle(
            color: Colors.white, fontSize: 10.0, fontFamily: 'Awesome Font'));

    textPaint.render(canvas, title, distance);
  }
}



class Earth extends Component with HasGameRef implements OrreryModel {
  @override
  String name       = "";
  @override
  double velocity   = 0.0;
  @override
  double size       = 0.0;
  @override
  Vector2 distance  = Vector2(0.0, 0.0);
  
  double anglePlanetRotation   = 0.0;
  final paint = Paint()..color = Colors.blue;
  Vector2 coordsPlanetPosition = Vector2(0.0, 0.0);
  
  Earth(v, s, o, t) {
    velocity = v; // Orbit Rotation velocity
    size     = s; // Planet size dimension
    distance = o; // Planet Orbit Ring size
    name     = t; // The name of the planet
  }

  @override
  void update(double dt) {
    super.update(dt);

    coordsPlanetPosition.x = gameRef.size.x / 2;
    coordsPlanetPosition.y = gameRef.size.y / 2;
    anglePlanetRotation   += velocity - dt;
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);

    orreryModelPosition(canvas, size, distance, coordsPlanetPosition);
  }

  
  @override
  void orreryModelPosition(Canvas canvas, double size, Vector2 planetOffset, Vector2 viewportMidPoint) {
    
    // Dynamic planet rotation
    canvas.save();

    // Translate from origin to the middle of the screen
    canvas.translate(viewportMidPoint.x, viewportMidPoint.y);
    orreryModelRotation(canvas, planetOffset.x * 1.375, Vector2(0.0,0.0));
    orreryModelLabel(canvas, name, planetOffset);
    // Set rotation angle around translation point
    canvas.rotate(anglePlanetRotation);

    // Draw the Circle - [x,y] coordinates from the centre
    canvas.drawCircle(Offset(planetOffset.x, planetOffset.y), size, paint);

    // Reset the translation to the origin
    canvas.translate(-(viewportMidPoint.x), -(viewportMidPoint.y));
    canvas.restore();
  }
  
  @override
  void orreryModelRotation(Canvas canvas, double radius, Vector2 ringPosition) {
    final paintStroke = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1
      ..isAntiAlias = true
      ..style = PaintingStyle.stroke;
    
    // Static content
    canvas.drawCircle(
        Offset(ringPosition.x, ringPosition.y), radius, paintStroke);
  }

  @override
  void orreryModelLabel(Canvas canvas, String title, Vector2 distance) {
    final textPaint = TextPaint(
        style: const TextStyle(
            color: Colors.white, fontSize: 10.0, fontFamily: 'Awesome Font'));

    textPaint.render(canvas, title, distance);
  }
}


class Mars extends Component with HasGameRef implements OrreryModel {
  @override
  String name       = "";
  @override
  double velocity   = 0.0;
  @override
  double size       = 0.0;
  @override
  Vector2 distance  = Vector2(0.0, 0.0);
  
  double anglePlanetRotation   = 0.0;
  final paint = Paint()..color = Colors.blue;
  Vector2 coordsPlanetPosition = Vector2(0.0, 0.0);
  
  Mars(v, s, o, t) {
    velocity = v; // Orbit Rotation velocity
    size     = s; // Planet size dimension
    distance = o; // Planet Orbit Ring size
    name     = t; // The name of the planet
  }

  @override
  void update(double dt) {
    super.update(dt);

    coordsPlanetPosition.x = gameRef.size.x / 2;
    coordsPlanetPosition.y = gameRef.size.y / 2;
    anglePlanetRotation   += velocity - dt;
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);

    orreryModelPosition(canvas, size, distance, coordsPlanetPosition);
  }

  
  @override
  void orreryModelPosition(Canvas canvas, double size, Vector2 planetOffset, Vector2 viewportMidPoint) {
    
    // Dynamic planet rotation
    canvas.save();

    // Translate from origin to the middle of the screen
    canvas.translate(viewportMidPoint.x, viewportMidPoint.y);
    orreryModelRotation(canvas, planetOffset.x * 1.375, Vector2(0.0,0.0));
//     print('Earth radius: ${planetOffset.x * 1.375}');
    orreryModelLabel(canvas, name, planetOffset);
    // Set rotation angle around translation point
    canvas.rotate(anglePlanetRotation);

    // Draw the Circle - [x,y] coordinates from the centre
    canvas.drawCircle(Offset(planetOffset.x, planetOffset.y), size, paint);
//     print('Earth planet: $planetOffset');

    // Reset the translation to the origin
    canvas.translate(-(viewportMidPoint.x), -(viewportMidPoint.y));
    canvas.restore();
  }
  
  @override
  void orreryModelRotation(Canvas canvas, double radius, Vector2 ringPosition) {
    final paintStroke = Paint()
      ..color = Colors.grey
      ..strokeWidth = 1
      ..isAntiAlias = true
      ..style = PaintingStyle.stroke;
    
    // Static content
    canvas.drawCircle(
        Offset(ringPosition.x, ringPosition.y), radius, paintStroke);
  }

  @override
  void orreryModelLabel(Canvas canvas, String title, Vector2 distance) {
    final textPaint = TextPaint(
        style: const TextStyle(
            color: Colors.white, fontSize: 10.0, fontFamily: 'Awesome Font'));

    textPaint.render(canvas, title, distance);
  }
}
