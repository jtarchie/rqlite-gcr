FROM rqlite/rqlite

ENV HTTP_ADDR 0.0.0.0:8080

COPY config/ /app/config/

CMD ["-on-disk","-auth", "/app/config/auth.json","-auto-backup", "/app/config/backup.json", "--auto-restore", "/app/config/restore.json"]
