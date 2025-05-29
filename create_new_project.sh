#!/bin/bash

# === CONFIGURATION ===
CORE_TEMPLATE_PATH="/d/05_GitHub/My_Repos/Active/Obfluence-Suite/Obfluence Core"
VAULT_PROJECTS_PATH="/c/Users/hxchi/iCloudDrive/iCloud~md~obsidian/Development_Projects/01_Projects"
VAULT_NAME="Development_Projects"

# === INPUT ===
read -p "Enter new project name: " PROJECT_NAME

if [[ -z "$PROJECT_NAME" ]]; then
    echo "❌ Project name cannot be empty."
    exit 1
fi

TARGET_DIR="$VAULT_PROJECTS_PATH/$PROJECT_NAME"

# === VALIDATION ===
if [ -d "$TARGET_DIR" ]; then
    echo "❌ A project with this name already exists at $TARGET_DIR"
    exit 1
fi

# === COPY TEMPLATE EXCLUDING SPECIFIC FILES/DIRECTORIES ===
# echo "📦 Creating new project: $PROJECT_NAME"
# rsync -av --exclude='_Obfluence_Story_Files/' --exclude='TO-DO.md' "$CORE_TEMPLATE_PATH/" "$TARGET_DIR/"

echo "📦 Creating new project: $PROJECT_NAME"
cp -r "$CORE_TEMPLATE_PATH" "$TARGET_DIR"

# Remove excluded items manually
rm -rf "$TARGET_DIR/_Obfluence_Story_Files"
rm -f "$TARGET_DIR/TO-DO.md"

# === MODIFY _index.md ===
INDEX_FILE="$TARGET_DIR/_index.md"
if [ -f "$INDEX_FILE" ]; then
    echo "🔧 Updating _index.md metadata"
    TODAY=$(date +"%Y-%m-%d")
    sed -i '1i---\ndate: '"$TODAY"'\ntitle: '"$PROJECT_NAME"'\n---\n' "$INDEX_FILE"
else
    echo "⚠️ _index.md not found; skipping metadata update"
fi

# === GENERATE PROJECT CANVAS ===
CANVAS_PATH="$TARGET_DIR/Project_Overview.canvas"
cat <<EOL > "$CANVAS_PATH"
{
  "nodes": [
    {
      "id": "overview",
      "type": "text",
      "x": 0,
      "y": 0,
      "width": 400,
      "height": 120,
      "text": "## Project Overview\n- [[_index.md]]\n- Notes go here"
    },
    {
      "id": "todo",
      "type": "text",
      "x": 420,
      "y": 0,
      "width": 400,
      "height": 120,
      "text": "## To Do\n- [ ] Task 1\n- [ ] Task 2"
    }
  ]
}
EOL

echo "🧩 Canvas created at: $CANVAS_PATH"

# === OPEN PROJECT IN OBSIDIAN ===
ENCODED_PATH=$(echo "01_Projects/$PROJECT_NAME/_index.md" | sed 's/ /%20/g' | sed 's/\//%2F/g')
OBSIDIAN_URI="obsidian://open?vault=$VAULT_NAME&file=$ENCODED_PATH"
echo "🚀 Opening in Obsidian..."
powershell.exe -Command "Start-Process '\"$OBSIDIAN_URI\"'"

echo "✅ Project '$PROJECT_NAME' is ready."
