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
