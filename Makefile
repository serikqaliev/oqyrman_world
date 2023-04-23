.PHONY: codegen-cached
codegen-cached:
	flutter pub run build_runner build

.PHONY: codegen
codegen:
	flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: codegen-release
codegen-release:
	flutter pub run build_runner build --delete-conflicting-outputs --config release

.PHONY: icons
icons:
	flutter pub run flutter_launcher_icons -f flutter_launcher_icons.yaml
