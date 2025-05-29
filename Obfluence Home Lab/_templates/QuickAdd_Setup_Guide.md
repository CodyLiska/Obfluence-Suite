# How to Set Up QuickAdd for Your Home Lab KB

## Step 1: Install Plugins
Install these Obsidian community plugins:
- **Templater**
- **QuickAdd**

## Step 2: Organize Your Vault
Ensure this structure:
```
.obsidian/templates/HomeLab/
├── 02_Hardware/
│   ├── Devices.md
│   ├── Accessories.md
│   └── Network_Gear.md
... (etc)
```
Place the template files into the correct folders.

## Step 3: Import QuickAdd Configuration
1. Copy `QuickAdd_HomeLab_Config.json` into your `.obsidian/plugins/quickadd/` folder.
2. Rename it to `quickadd.json` (overwrite if necessary).
3. Restart Obsidian or reload plugins.

## Step 4: Use QuickAdd
Use the Command Palette (`Cmd/Ctrl + P`) and run:
- `QuickAdd: New Device Note`
- `QuickAdd: New Reverse Proxy Rule`
- etc.

Each action:
- Prompts for a title.
- Applies a template with dynamic metadata.
- Places the file in the correct subfolder.
