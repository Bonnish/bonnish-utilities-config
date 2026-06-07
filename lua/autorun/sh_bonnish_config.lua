BonnishBase = BonnishBase or {}

--=========================================================--
-- BONNISH UTILITIES - SERVER OWNER CONFIGURATION
--=========================================================--
-- This file is for Server Owners to configure database 
-- connections and permissions across all Bonnish addons.
-- 
-- DO NOT upload this folder to the Workshop. Provide it 
-- as a direct download so owners can edit it locally.
--=========================================================--

BonnishBase.ServerConfig = {
    --=========================================================--
    -- LANGUAGE
    --=========================================================--
    -- Available languages: "en" (English), "es" (Spanish)
    Language = "en",

    --=========================================================--
    -- PERMISSIONS
    --=========================================================--
    -- These are the usergroups (ranks) that will have access to
    -- the Bonnish Utilities Control Panel and Admin Tools.
    -- (Compatible with ULX, SAM, ServerGuard, FAdmin, etc).
    AllowedRanks = {
        "superadmin",
        "owner",
        "manager",
        "admin"
    },

    --=========================================================--
    -- DATABASE (SQL)
    --=========================================================--
    -- Database settings for future cross-server synchronization.
    -- If Enabled is false, data saves locally (SQLite/JSON).
    Database = {
        Enabled = true,
        
        --=========================================================--
        -- MODULE SYNCHRONIZATION
        --=========================================================--
        -- Remove the "--" at the start of the line to enable SQL 
        -- synchronization for specific modules. This shares settings 
        -- across multiple servers connected to the same database.
        --
        -- SyncJobSpawns = true,
        -- SyncNoTargetSettings = true,

        Host = "127.0.0.1",
        User = "root",
        Password = "password",
        DatabaseName = "gmod_bonnish",
        Port = 3306
    }
}
