proto-c:
	protoc --dart_out=grpc:lib/model/proto msg-proto/*.proto

gen:
	flutter pub run build_runner build --delete-conflicting-outputs

update-modules:
	git submodule update --recursive --remote
