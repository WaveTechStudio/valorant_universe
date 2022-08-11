<div align="center">
  <h1 align="center">Valorant Universe</h1>
  <p align="center">
    Valorant Universe is an application that introduces agents and weapons from Valorant game using Valorant-API. 
  </p>
</div>

## Built With

- [Flutter](https://flutter.dev/)
- [Dart](https://dart.dev/)
- [Valorant-API](https://dash.valorant-api.com/)

## Preview

<p align='center'>
    <img src="screenshots/splash.png" width="19%"/>
    <img src="screenshots/agents.png" width="19%"/>
    <img src="screenshots/agent_detail.png" width="19%"/>
    <img src="screenshots/weapons.png" width="19%"/>
    <img src="screenshots/weapon_detail.png" width="19%"/>
</p>

## Architecture

This app is developed with [MVVM](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93viewmodel) pattern.

## Packages

- State management
  - [MobX](https://pub.dev/packages/mobx)
  - [Flutter Mobx](https://pub.dev/packages/flutter_mobx)
- Cache
  - [Cached Network Image](https://pub.dev/packages/cached_network_image)
- Network
  - [dio](https://pub.dev/packages/dio)
  - [PrettyDioLogger](https://pub.dev/packages/pretty_dio_logger)
- Routing
  - [AutoRoute](https://pub.dev/packages/auto_route)
- Localization
  - [EasyLocalization](https://pub.dev/packages/easy_localization)
- Google
  - [Json Annotation](https://pub.dev/packages/json_annotation)
  - [Json Serializable](https://pub.dev/packages/json_serializable)
- Code Generation
  - [MobX Codegen](https://pub.dev/packages/mobx_codegen)
  - [Build Runner](https://pub.dev/packages/build_runner)
  - [Auto Route Generator](https://pub.dev/packages/auto_route_generator)

## Project Structure

- Core folder represents the services, classes that can be used in any other project.
- Features folder represents the feature set of the app. Each feature contains service, model, view, viewmodel subfolders.
- Product folder contains files specific to this project.

<pre>

├── assets
│   ├── fonts
│   ├── icons
│   └── translations
├── lib
│   ├── core
│   │   ├── enum
│   │   ├── extension
│   │   └── manager
│   │       ├── language
│   │       ├── network
│   │       └── route
│   ├── features
│   │   ├── agent_detail
│   │   ├── agents
│   │   ├── navbar
│   │   ├── weapon_detail
│   │   └── weapons
│   ├── product
│   │   ├── constants
│   │   ├── icons
│   │   ├── init
│   │   ├── theme
│   │   └── widget
│   └── main.dart
├── script
├── test
│   └── service
└── pubspec.yaml
</pre>

## License

Licensed under the MIT license, click [here](license.md) for details.




