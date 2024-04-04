BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "product" (
    "id" serial PRIMARY KEY,
    "title" text NOT NULL,
    "description" text NOT NULL,
    "price" integer NOT NULL,
    "discountPercentage" double precision NOT NULL,
    "rating" double precision NOT NULL,
    "stock" integer NOT NULL,
    "brand" text NOT NULL,
    "category" text NOT NULL,
    "thumbnail" text NOT NULL,
    "images" json NOT NULL
);


--
-- MIGRATION VERSION FOR dummypod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('dummypod', '20240404072943310', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240404072943310', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
