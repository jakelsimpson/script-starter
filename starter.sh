#!/bin/bash

# Text Colors
RED='\033[0;31m'
YELLOW='\033[1;33m'
RESET='\033[0m]'

# Check if a filename is provided as an argument
if [ -z "$1" ]; then
  echo -e "${RED}Missing the new file's name. Use Script as:${RESET}"
  echo -e "${YELLOW}Usage: $0 <new_file_name>${RESET}"
  exit 1
fi

new_script_name="$1.sh"

# Create the new_script.sh file
echo "#!/bin/bash" > "$new_script_name"
echo "" >> "$new_script_name"
echo "# COLORS" >> "$new_script_name"
echo "RED='\033[0;31m'" >> "$new_script_name"
echo "YELLOW='\033[1;33m'" >> "$new_script_name"
echo "RESET='\033[0m]'" >> "$new_script_name"
echo "" >> "$new_script_name"
echo '# START SCRIPTING HERE' >> "$new_script_name"

# Make the new_script.sh file executable
chmod +x "$new_script_name"

echo "Script '$new_script_name' created. Run it using ./$new_script_name."
