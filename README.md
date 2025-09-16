# ⚡ cr1pt0Kn1ght-tools ⚡
_A small arsenal for recon and bug bounty hunting._

> 🕶️ Mapping subdomains, checking alive hosts, building the hunter mindset.

---

## 🔎 recon.sh
A simple shell script to automate **subdomain enumeration** and **host discovery**.

### 🛠️ Requirements
Make sure you have these tools installed on your system:
- [Subfinder](https://github.com/projectdiscovery/subfinder)
- [Assetfinder](https://github.com/tomnomnom/assetfinder)
- [Httpx](https://github.com/projectdiscovery/httpx)

---

### ⚔️ Usage
```bash
./recon.sh target.com
````

This will generate:

* `subs_subfinder.txt` → Subdomains from Subfinder
* `subs_assetfinder.txt` → Subdomains from Assetfinder
* `subs_all.txt` → Unique merged subdomains
* `alive.txt` → Live hosts verified with httpx

---

### 💀 Example

```bash
./recon.sh hackerone.com
```

Output:

```
[*] Running Subfinder...
[*] Running Assetfinder...
[*] Merging and removing duplicates...
[*] Checking live hosts with httpx...
[*] Recon finished!
 - Subdomains: subs_all.txt
 - Alive hosts: alive.txt
```

---

### 🚀 Future Plans

* Add more tools (gau, gf, nuclei)
* Chain into vulnerability fuzzing
* Create advanced pipelines

---

## 🕵️ About

Built by **cr1pt0Kn1ght** as part of the journey into **Offensive Security** and **Bug Bounty Hunting**.

> *“Stay low, recon everything, and strike with precision.”*

---
