#!/usr/bin/env sh

browserify -w -t coffeeify --extension=".coffee" src/worker/index.coffee -o public/sw.js
browserify -w -t coffeeify --extension=".coffee" src/client/index.coffee -o public/client.js

sbt fullOptJS
cp ./target/scala-2.11/mz-opt.js public/
cp ./target/scala-2.11/mz-opt.js.map public/
cp ./target/scala-2.11/mz-launcher.js public/
