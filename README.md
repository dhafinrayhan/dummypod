# DummyPod

An implementation of [DummyJSON] in [Serverpod].

## Directories

Main directories:
- [Endpoints](https://github.com/dhafinrayhan/dummypod/tree/master/apps/dummypod_server/lib/src/endpoints): This is where the endpoints are defined.
- [Models](https://github.com/dhafinrayhan/dummypod/tree/master/apps/dummypod_server/lib/src/models): This is where the models are defined.
- [Flutter App Lib](https://github.com/dhafinrayhan/dummypod/tree/master/apps/dummypod_flutter/lib): The `lib` directory of the Flutter app used to test endpoints.

## Server-related commands
Run these commands from the `apps/dummypod_server` directory.

### Running the server
```bash
docker compose up --build --detach
dart bin/main.dart --apply-migrations
```

### After modifying an endpoint
```bash
serverpod generate
```

### After modifying a model
```bash
serverpod generate
```
If the modification affects how the database is structured, you need to create and apply the migration:
```bash
serverpod create-migration
dart run bin/main.dart --role maintenance --apply-migrations
```

  
  [DummyJSON]: https://github.com/Ovi/DummyJSON
  [Serverpod]: https://serverpod.dev/
