#!/bin/bash

##Fill in these vars
export HUB_USER="FILL_IN" # Email of the user with API access granted
export HUB_API_KEY="FILL_IN" # HUB API key
export IEM_NAME="FILL_IN"
export EDGE_SKIP_TLS=1


./iectl config add iehub \
         --name "hub" \
         --url "https://iehub.eu1.edge.siemens.cloud/" \
         --user $HUB_USER \
         --password $HUB_API_KEY


# Maak een lijst van alle geïnstalleerde apps in de managementmodule
names_array=$(./iectl iehub library list-app| \python3 ./getAppNamesFromHub.py)

# Remove square brackets from the names_array string
names_array=${names_array//[\[\]]/}
# Set IFS to comma
IFS=',' read -ra items <<< "$names_array"

# Iterate over the array and perform operations
for item in "${items[@]}"; do

  # Trim spaces if they exist as first or last character
  item=${item%%+([[:space:]])}  
  item=${item##+([[:space:]])}
  item="${item#?}"
  item=$(echo "$item" | tr -d "'")  # Remove single quotes


  if [ -n "$item" ]; then

    echo updating "$item" 
    ./iectl iehub library copy-app \
         --app-name "$item" \
         --iem-name $IEM_NAME

  fi
done

echo "Done"