#!/bin/bash
# Krocbox Automated Janitor - Safe Maintenance
# Runs Sundays at 3:00 AM
cat <<EOF > /etc/systemd/system/krocbox-purge.service
[Unit]
Description=Safe Krocbox System Cleanup
[Service]
Type=oneshot
ExecStart=/usr/bin/rpm-ostree cleanup -m
ExecStart=/usr/bin/flatpak uninstall --unused -y
ExecStart=/usr/bin/podman system prune -f
EOF

cat <<EOF > /etc/systemd/system/krocbox-purge.timer
[Timer]
OnCalendar=Sun *-*-* 03:00:00
Persistent=true
[Install]
WantedBy=timers.target
EOF

systemctl enable krocbox-purge.timer
