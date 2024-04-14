BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "recipe" (
    "id" serial PRIMARY KEY,
    "name" text NOT NULL,
    "ingredients" json NOT NULL,
    "instructions" json NOT NULL,
    "prepTimeMinutes" integer NOT NULL,
    "cookTimeMinutes" integer NOT NULL,
    "servings" integer NOT NULL,
    "cuisine" text NOT NULL,
    "caloriesPerServing" integer NOT NULL,
    "tags" json NOT NULL,
    "image" text NOT NULL,
    "rating" double precision NOT NULL,
    "reviewCount" integer NOT NULL,
    "mealType" json NOT NULL
);


--
-- MIGRATION VERSION FOR dummypod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('dummypod', '20240414064719679', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240414064719679', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20240115074239642', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074239642', "timestamp" = now();


COMMIT;
