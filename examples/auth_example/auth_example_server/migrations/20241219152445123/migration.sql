BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "serverpod_user_info" ALTER COLUMN "userName" DROP NOT NULL;

--
-- MIGRATION VERSION FOR auth_example
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('auth_example', '20241219152445123', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241219152445123', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20240520102713718', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240520102713718', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
