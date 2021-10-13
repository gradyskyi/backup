# backup

check pgbackrest:

`docker exec -i bash -c "pgbackrest --stanza=main --log-level-console=info check"`

run full backup:

`pgbackrest --stanza=main --type=full --log-level-console=info backup`

run diff backup:

`pgbackrest --stanza=main --type=diff --log-level-console=info backup`

run diff incremental:

`pgbackrest --stanza=main --type=incr --log-level-console=info backup`