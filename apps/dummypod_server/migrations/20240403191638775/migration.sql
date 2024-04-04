BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "quote" (
    "id" serial PRIMARY KEY,
    "quote" text NOT NULL,
    "author" text NOT NULL
);


--
-- MIGRATION VERSION FOR dummypod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('dummypod', '20240403191638775', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240403191638775', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
