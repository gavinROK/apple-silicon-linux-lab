# apple-silicon-linux-lab
Linux-on-Apple-Silicon lab documenting installation, boot configuration, hardware compatibility, networking, and cybersecurity tooling on an M5 Pro MacBook.
Apple Silicon Linux Lab

A hands-on Linux and cybersecurity lab focused on Apple Silicon, ARM64 virtualization, networking, system hardening, troubleshooting, and automation.

Project Goals

This project documents my work exploring Linux on Apple Silicon hardware and building practical Linux administration and cybersecurity skills.

Key areas include:

* Apple Silicon and ARM64 Linux compatibility
* Linux virtualization on macOS
* Network configuration and troubleshooting
* SSH and remote administration
* Linux firewall and service auditing
* Bash scripting and automation
* System hardening
* Hardware and kernel compatibility research

Hardware

Primary system:

* Apple MacBook Pro
* Apple M5 Pro
* ARM64 architecture

Native Linux support for newer Apple Silicon generations is still developing, so this lab also uses ARM64 virtual machines for Linux administration and security testing.

Lab Environment

Planned Linux environments include:

* Fedora
* Ubuntu
* Fedora Asahi Remix when supported
* ARM64 virtual machines

Repository Structure

docs/       Research, compatibility notes, and troubleshooting
scripts/    Bash automation and auditing scripts
reports/    Locally generated audit reports

Current Scripts

system-audit.sh

Collects basic Linux system information including:

* Kernel and architecture
* CPU
* RAM
* Storage
* Network interfaces
* Routes
* Logged-in users
* Running services

network-audit.sh

Examines:

* IP addresses
* Network interfaces
* Routing table
* DNS configuration
* Listening TCP and UDP ports
* Network connectivity

security-check.sh

Performs basic Linux security checks including:

* Current user privileges
* SSH configuration
* Firewall status
* Listening services
* Failed login activity
* World-writable files

Skills Demonstrated

This project demonstrates experience with:

* Linux
* Bash
* ARM64
* Git and GitHub
* TCP/IP networking
* SSH
* Linux permissions
* Firewalls
* System administration
* Security auditing
* Technical documentation

Disclaimer

All testing in this repository is performed on systems and networks I own or am explicitly authorized to use.
