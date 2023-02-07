# PoGoLeiria Mobile App Json Dump

Repository used to handle all the static content resulting from the [Pokémon Scanner](https://pogoleiria.pt) made available by [PoGoLeiria](https://discord.gg/pASCYbp).

[Poliswag](https://github.com/rubendgpedrosa/Poliswag) is a Python Discord Bot that integrates with those services.

This repository is just a cheap (free) static files server for the [PoGoLeiria](https://github.com/rubendgpedrosa/PoGoLeiria) Mobile App.

## Usage


Python bot (Poliswag) handles all the data fetching and dumping that is retrieved from the scanner's Database.

1. Poliswag reads data from database and dumps categorized JSONs.
2. Crontab runs every file change to keep the data on the repository data most up to date.
3. Files are wiped clean at midnight to reflect day changes.

```bash
# syncs repository with local changes
bash questPusher.sh

# wipes data clean from local files at midnight (crontab)
bash clearQuests.sh
```

## Contributing

Pretend it doesn't exist :)
