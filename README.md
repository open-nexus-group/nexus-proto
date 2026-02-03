# OpenNexus Protobuf Schemas

> Provides schemas to import into golang projects for protocol buffers

## Compile

Run `make generate`.

## Develop

Create new `*.proto` files in `proto/nexus/events/v*` based on the version you are targeting.
For breaking changes create a new version directory.

When releasing updates, we apply a git tag with the version number so that the client can adopt the latest changes.
