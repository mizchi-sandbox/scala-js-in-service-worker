package mz

import scala.scalajs.js
import js.annotation.JSExport
import org.scalajs.dom

object Main extends js.JSApp {
  def main(): Unit = {
    println("loaded")
  }

  /** Computes the square of an integer.
   *  This demonstrates unit testing.
   */
  def square(x: Int): Int = x*x
}
