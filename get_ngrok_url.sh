#!/bin/bash
echo "$(curl -s http://localhost:4040/api/tunnels | jq -r ".tunnels[0].public_url")"
