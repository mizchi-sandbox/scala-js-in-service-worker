package mz

import utest._

object MainTest extends TestSuite {
  import Main._
  def tests = TestSuite {
    'Main {
      assert(square(0) == 0)
      assert(square(4) == 16)
      assert(square(-5) == 25)
    }
  }
}
