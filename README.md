# Ansible Playbook zur Installation von 50ohm.de

- Installiert die Code Repositories für 50ohm.de und das Content-Repository
- Initialisiert die Python Build-Umgebung
- Baut die Webseite erstmalig
- Konfiguriert Certbot und Nginx
- Installiert einen Systemd-Timer zum regelmäßigen Refresh

## Voraussetzungen

Wir verwenden ein Debian 12 System. Nur darauf ist der Code getestet.

## TODO

- Umbau auf Docker
- Verwendung von Webhooks statt eines Timers
