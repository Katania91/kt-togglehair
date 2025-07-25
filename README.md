KT-ToggleHair

A simple, standalone script for FiveM that allows players to toggle their character's hair on and off with a single command. It's the perfect solution for fixing clipping issues between hair and hats, helmets, or other head accessories.

## ✨ Features

*   **✅ Standalone**: No dependencies required. Does not need any framework (like ESX/QBCore) or custom animation scripts.
*   **🎮 Simple Command**: Uses the `/togglehair` command to hide or show hair.
*   **🎨 Full Save State**: Saves and restores not just the hair model and texture, but also the primary and highlight colors.
*   **⚡ Lightweight**: A minimal script with virtually zero impact on server or client performance.

## 🛠️ Installation

1.  Download the repository as a ZIP file.
2.  Extract the files.
3.  Place the folder inside your `resources` folder of your FiveM server.
4.  In your `server.cfg`, add the following line to start the script:
    ```
    ensure togglehair # Make sure this name matches the folder name
    ```
5.  Restart your FiveM server, or run `refresh` and `ensure kt-togglehair` in the server console to load the resource.

## 🚀 How to Use

Once in-game, open the chat (press `T` by default) and type:

*   `/togglehair` to hide your character's hair.
*   `/togglehair` a second time to make it reappear exactly as it was before.

If no hair data has been saved (for example, if the player already has an accessory that hides the hair by default), the script will do nothing to prevent errors.
