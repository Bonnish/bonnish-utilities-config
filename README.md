# Bonnish Utilities - Config

This is the main configuration repository for the entire **Bonnish Utilities** ecosystem. Server owners can centrally configure global permissions, language, and database connections (MySQLOO) for all Bonnish modules from here.

⚠️ **CRITICAL WARNING:** This repository must **NEVER** be uploaded to the Steam Workshop. It is designed to be downloaded directly from GitHub and installed manually on your server. If you upload this to the Workshop, your database credentials could be exposed to the public, and you won't be able to easily edit the file locally on your server.

---

## 📥 Installation

1. Download this repository by clicking the green **Code -> Download ZIP** button.
2. Extract the downloaded folder.
3. Rename the extracted folder to `bonnish-utilities-config`.
4. Move the folder to your server's addons path: `garrysmod/addons/`.

The final structure should look like this:
```text
garrysmod/
└── addons/
    └── bonnish-utilities-config/
        ├── lua/
        │   └── autorun/
        │       └── sh_bonnish_config.lua
        └── README.md
```

---

## ⚙️ Configuration (`sh_bonnish_config.lua`)

Open the `lua/autorun/sh_bonnish_config.lua` file with your favorite text editor (we recommend VSCode or Notepad++). Inside, you will find the following sections:

### 🌍 Language
Define the global language for all Bonnish system menus and notifications.
- `"en"` for English.
- `"es"` for Spanish.

### 🔐 Permissions (AllowedRanks)
Define which administrative ranks have permission to open the Dashboard and modify addon configurations in-game. 
It is 100% compatible with popular admin systems like **ULX, SAM, ServerGuard, and FAdmin**.
Simply add or remove the rank names (in lowercase).

### 💾 Database
The Bonnish system features native support for **MySQL**, allowing you to share data across different servers.

1. Set `Enabled = true` if you wish to use an external database.
2. Remove the two dashes (`--`) in front of the modules you want to synchronize (e.g., `SyncJobSpawns = true`).
3. Fill in your connection details (`Host`, `User`, `Password`, `DatabaseName`, `Port`).

> **Note:** If you don't have a MySQL database or prefer not to use one, leave `Enabled = false`. The system will automatically and safely save all data in local JSON files inside the `garrysmod/data/bonnish/` folder.

---

## 🔗 Dependencies
To use this configuration file, you must have the main core installed on your server:
- [Bonnish Utilities Core](https://github.com/Bonnish/bonnish-utilities-core) (Required)

If you plan to use the MySQL system (`Enabled = true`), your server strictly requires the [MySQLOO](https://github.com/FredyH/MySQLOO) binary module installed in the `garrysmod/lua/bin/` folder.
