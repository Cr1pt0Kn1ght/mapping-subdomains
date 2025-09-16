#!/bin/bash
# Basic Recon - cr1pt0Kn1ght

domain=$1

if [ -z "$domain" ]; then
  echo "Usage: ./recon.sh target.com"
  exit 1
fi

echo "[*] Running Subfinder..."
subfinder -d $domain -silent | tee subs_subfinder.txt

echo "[*] Running Assetfinder..."
assetfinder --subs-only $domain | tee subs_assetfinder.txt

echo "[*] Merging and removing duplicates..."
cat subs_subfinder.txt subs_assetfinder.txt | sort -u > subs_all.txt

echo "[*] Checking live hosts with httpx..."
cat subs_all.txt | httpx -silent | tee alive.txt

echo "[*] Recon finished!"
echo " - Subdomains: subs_all.txt"
echo " - Alive hosts: alive.txt"
