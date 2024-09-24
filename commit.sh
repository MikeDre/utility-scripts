#!/bin/bash

# Define commit types
echo "Select commit type:"
options=("✨ Added" "🐛 Fixed" "🔧 Updated" "♻️ Changed" "🗑 Removed")

select opt in "${options[@]}"
do
    case $opt in
        "✨ Added")
            COMMIT_TYPE="✨ Added:"
            break
            ;;
        "🐛 Fixed")
            COMMIT_TYPE="🐛 Fixed:"
            break
            ;;
        "🔧 Updated")
            COMMIT_TYPE="🔧 Updated:"
            break
            ;;
        "♻️ Changed")
            COMMIT_TYPE="♻️ Changed:"
            break
            ;;
        "🗑 Removed")
            COMMIT_TYPE="🗑 Removed:"
            break
            ;;
        *)
            echo "Invalid option, please choose again."
            ;;
    esac
done

# Get commit message
read -p "Enter commit message: " COMMIT_MSG

# Construct the commit message
FINAL_COMMIT_MSG="$COMMIT_TYPE $COMMIT_MSG"

# Run git commit with formatted message
git commit -m "$FINAL_COMMIT_MSG"