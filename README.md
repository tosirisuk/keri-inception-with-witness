Ensure that the bash script files are executable

```bash
(sudo) chmod 755 source.sh
(sudo) chmod 755 scripts/*.sh
```

Load the bash environment variables

```bash
source source.sh "<your local aid name>"
```

For example

```bash
source source.sh john
```

KERI Init and Incept through the `kli command`

```bash
./scripts/create-local-aid.sh
```
