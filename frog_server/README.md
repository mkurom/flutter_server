# frog_server

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]
[![Powered by Dart Frog](https://img.shields.io/endpoint?url=https://tinyurl.com/dartfrog-badge)](https://dartfrog.vgv.dev)

An example application built with dart_frog

[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis



# memo

dart_frogのバージョンが0.19の時の対応

```
dart_frog create [project_name]
```
上記コマンド実行時の作成されるpubspec.yamlに記載されているdartのverは">=2.18.0 <3.0.0"になっている
そのため、2.17.0に変更後、依存関係を合わせるために、一旦、very_good_analysisをコメントアウト（もしくはバージョンを下げる）

```
environment:
  sdk: ">=2.17.0 <3.0.0"

dependencies:
  dart_frog: ^0.1.0

dev_dependencies:
  mocktail: ^0.3.0
  test: ^1.19.2
  # very_good_analysis: ^3.1.0
```