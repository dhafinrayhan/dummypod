BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "user" (
    "id" serial PRIMARY KEY,
    "userInfoId" integer NOT NULL,
    "age" integer NOT NULL,
    "gender" text NOT NULL,
    "phone" text NOT NULL,
    "birthDate" timestamp without time zone NOT NULL,
    "bloodGroup" text NOT NULL,
    "height" integer NOT NULL,
    "weight" double precision NOT NULL,
    "eyeColor" text NOT NULL,
    "hair" json NOT NULL,
    "domain" text NOT NULL,
    "ip" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "user_info_id_unique_idx" ON "user" USING btree ("userInfoId");

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "user"
    ADD CONSTRAINT "user_fk_0"
    FOREIGN KEY("userInfoId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR dummypod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('dummypod', '20240404170207250', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240404170207250', "timestamp" = now();

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
