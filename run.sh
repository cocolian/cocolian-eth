#!/bin/sh

ps aux | grep geth | grep mine | awk '{print $2}' | xargs -t -r kill $1

geth --nodiscover --nat 'none' --unlock 0 --verbosity 10 --config /home/cocolian/eth/coco.toml --password /home/cocolian/eth/passwd  console 2> /home/cocolian/eth/main.log


