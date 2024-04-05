BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "user" ALTER COLUMN "age" DROP NOT NULL;
ALTER TABLE "user" ALTER COLUMN "gender" DROP NOT NULL;
ALTER TABLE "user" ALTER COLUMN "phone" DROP NOT NULL;
ALTER TABLE "user" ALTER COLUMN "birthDate" DROP NOT NULL;
ALTER TABLE "user" ALTER COLUMN "bloodGroup" DROP NOT NULL;
ALTER TABLE "user" ALTER COLUMN "height" DROP NOT NULL;
ALTER TABLE "user" ALTER COLUMN "weight" DROP NOT NULL;
ALTER TABLE "user" ALTER COLUMN "eyeColor" DROP NOT NULL;
ALTER TABLE "user" ALTER COLUMN "hair" DROP NOT NULL;
ALTER TABLE "user" ALTER COLUMN "domain" DROP NOT NULL;
ALTER TABLE "user" ALTER COLUMN "ip" DROP NOT NULL;

--
-- MIGRATION VERSION FOR dummypod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('dummypod', '20240404172120382', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240404172120382', "timestamp" = now();

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
