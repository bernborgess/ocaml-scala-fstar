package beecrowd
import scala.io.StdIn._
import scala.math.BigDecimal

object AreaOfACircle {
  def solve() = {
    val pi = 3.14159
    val R = readDouble()
    val A = BigDecimal(pi * R * R)
      .setScale(4, BigDecimal.RoundingMode.HALF_UP)
      .toDouble
    println(s"A=$A")
  }
}
