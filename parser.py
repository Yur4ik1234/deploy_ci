#!/usr/bin/python3

import json
import sys

# Read JSON input from stdin
input_json = sys.stdin.read()

# Parse the JSON
data = json.loads(input_json)

# Extract the IP address
ip_address = data[0]["ipAddress"]

# Print the IP address
print(ip_address)