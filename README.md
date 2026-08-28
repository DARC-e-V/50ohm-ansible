# Ansible Playbook zur Installation von 50ohm.de

- Installiert die Code Repositories für 50ohm.de und das Content-Repository
- Initialisiert die Python Build-Umgebung
- Baut die Webseite erstmalig
- Konfiguriert Certbot und Nginx
- Installiert einen Systemd-Timer zum regelmäßigen Refresh

## Voraussetzungen

Wir verwenden ein Debian 12 System. Nur darauf ist der Code getestet.

## Molecule-Tests

Die Ansible-Rollen können mit [Molecule](https://ansible.readthedocs.io/projects/molecule/) getestet werden.

**Installation**:

```bash
pip install molecule molecule-plugins[docker] ansible
```

**Ansible-Kollektionen**:

```bash
ansible-galaxy collection install -r molecule/default/collections.yml
```

### Tests ausführen

```bash
molecule test
```

Einzelne Phasen können auch separat aufgerufen werden, z.B.:

```bash
molecule converge   # Playbook ausführen
molecule verify     # Verifikation ausführen
molecule destroy    # Testumgebung aufräumen
```

## TODO

- Umbau auf Docker
- Verwendung von Webhooks statt eines Timers
