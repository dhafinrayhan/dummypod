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

## APIs

### Auth
- [x] Login and get token (handled by `serverpod_auth`)
- [x] Get auth user (handled by `serverpod_auth`)
- [x] Refresh token (handled by `serverpod_auth`)

### Products
- [x] Get all products
- [x] Get a single product
- [x] Search products
- [x] Limit & skip products
- [ ] Get all products categories
- [ ] Get products of category
- [x] Add a product
- [x] Update a product
- [x] Delete a product

### Carts
- [ ] Get all carts
- [ ] Get a single cart
- [ ] Get carts of user
- [ ] Add a cart
- [ ] Update a cart
- [ ] Delete a cart

### Recipes
- [x] Get all recipes
- [x] Get a single recipe
- [x] Search recipes
- [x] Limit & skip recipes
- [ ] Get all recipes tags
- [ ] Get recipes by tag
- [ ] Get recipes by meal type

### Users
- [x] Get all users
- [x] Get auth user (handled by `serverpod_auth`)
- [x] Get a single user
- [x] Search users
- [ ] Filter users
- [x] Limit & skip users
- [ ] Get user's carts
- [ ] Get user's posts
- [ ] Get user's todos
- [ ] Add a user
- [ ] Update a user
- [ ] Delete a user

### Posts
- [ ] Get all posts
- [ ] Get a single post
- [ ] Search posts
- [ ] Limit & skip posts
- [ ] Get post by user id
- [ ] Get post's comments
- [ ] Add a post
- [ ] Update a post
- [ ] Delete a post

### Comments
- [ ] Get all comments
- [ ] Get a single comment
- [ ] Limit & skip comments
- [ ] Get comment by post id
- [ ] Get post's comments
- [ ] Add a comment
- [ ] Update a comment
- [ ] Delete a comment

### Image
- [ ] Generate square image
- [ ] Custom width/height
- [ ] Custom text
- [ ] Custom background color
- [ ] Custom text color
- [ ] Different formats
- [ ] Custom font family
- [ ] Custom font size

### Todos
- [ ] Get all todos
- [ ] Get a single todo
- [ ] Get a random todo
- [ ] Limit & skip todos
- [ ] Add a todo
- [ ] Update a todo
- [ ] Delete a todo

### Quotes
- [x] Get all quotes
- [x] Get a single quote
- [x] Get a random quote
- [x] Limit & skip quotes

  
  [DummyJSON]: https://github.com/Ovi/DummyJSON
  [Serverpod]: https://serverpod.dev/
