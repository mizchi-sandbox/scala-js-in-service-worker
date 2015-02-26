# Scala.js in ServiceWorker

This is an experimental project.

Scala.js works in service worker with network proxy, [mizchi/sabizan](https://github.com/mizchi/sabizan "mizchi/sabizan")

## Example

It works in ServiceWorker.

```scala
package mz
import scala.scalajs.js
import js.annotation.JSExport
import js.Dynamic.global

object Main extends js.JSApp {
  def main(): Unit = {
    global.proxy.get("/users/:id", (m: js.Dynamic) => {
      js.Dynamic.literal(`id` = m.id)
    })
  }
}
```

It respond to requests from client

```js
fetch('api/users/mizchi').then(function(d){return d.json()}).then(console.log.bind(console))
//=> Object {id: "mizchi"}
```

## How to work

Build

```
npm install
./build.sh
```

Run localhost server by your way

```
cd public/
python -m SimpleHTTPServer 4000
```

open `http://localhost:4000` and reload twice. (This aciton is work around. Need to activate ServiceWorker)
