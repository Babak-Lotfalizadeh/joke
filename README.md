#Boilerplate

a boilerplate for flutter

## Data Management
Provider

## ReCreate Launcher icon
Just Copy Your Desire icon anywhere then add the address of icon in flutter_launcher_icons.yaml then run below code in project directory
```bash
flutter pub run flutter_launcher_icons:main
```
[source](https://pub.dev/packages/flutter_launcher_icons)

## ReCreate Auto Create Classes
1- add imports in yaml file
```bash
dependencies:
  json_annotation: ^4.0.1
dev_dependencies: 
  build_runner: ^2.0.4
  json_serializable: ^4.1.3
```
2- add import
```bash 
import 'package:json_annotation/json_annotation.dart';
```
3- add tags for your model
```bash 
@JsonSerializable()
``` 
4- add part for your model
```bash 
part 'token_view_model.g.dart';
``` 
in this example my dart file name was "token_view_model"
5- run pub get
```bash 
flutter pub get
``` 
6- then run below code:
```bash 
flutter pub run build_runner build
```

[source](https://pub.dev/packages/json_annotation) 
