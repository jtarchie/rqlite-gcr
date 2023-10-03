# rqlite on Google Cloud Run

Deploy rqlite (single node) to Google Cloud Run.

## Usage

For configuration files:

- `config/auth.json` configure from these
  [docs](https://rqlite.io/docs/guides/security/#basic-auth).
- `config/backup.json` configured from these
  [docs](https://rqlite.io/docs/guides/backup/#amazon-s3). You'll need to setup an s3 bucket 

```bash
./deploy.sh
```

Wait awhile, and take the URL given from the output:

```bash
rqlite \
  -H hostname \
  -p 443 \
  -s https
```