# PoGoLeiria Mobile App Json Dump

Repository used to dump some static content that results from the Python Wep Application that is a [Pokémon Scanner](https://pogoleiria.pt) made available by [PoGoLeiria](https://discord.gg/pASCYbp).

[Poliswag](https://github.com/rubendgpedrosa/Poliswag) is a Python Discord Bot that integrates with those services and manages them.

This repository is just a cheap (free) static files server for the [PoGoLeiria](https://github.com/rubendgpedrosa/PoGoLeiria) React Native Mobile App to offload some of the load from the main server.

## Usage


Python bot (Poliswag) handles all the data fetching and dumping that is retrieved from the scanner's Database.

1. Poliswag reads quest data from database and dumps categorized JSONs.
2. Crontab runs every and checks for repository changes in order to keep the data as up to date as possible.
3. Files are wiped clean at midnight to reflect day change and clear expired quests.

```bash
# syncs repository with local changes
bash questPusher.sh

# wipes data clean from local files at midnight (crontab)
bash clearQuests.sh
```

## Contributing

Pretend it doesn't exist :)
