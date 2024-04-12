import json
import sys

# Load data
rawData = json.load(sys.stdin)['content']
result = []

for obj in rawData:
    # Check if the object has the "name" attribute
    if "name" in obj:
        # Add the key to the new array
        result.append(obj["name"])

print(result)