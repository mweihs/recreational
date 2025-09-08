package main

import "core:fmt"

data :: struct {
  a : [][2]int,
  c : [2]int,
}

test_data : []data = {
  {a = {{1,2},{3,1},{2,4},{2,3}}, c = {3,4}},  //  2
  {a = {{3,4},{2,3},{1,5},{2,5}}, c = {2,5}},  //  3
  {a = {{2,2},{3,3},{4,4}},       c = {1,1}},  // -1
  {a = {{0,1},{1,0},{0,2},{2,0}}, c = {0,0}},  //  0
}

main :: proc() {
  for d,i in test_data { fmt.printf("%d -> %d\n", i, nearest_valid(d.a, d.c)) }
}

nearest_valid :: proc(a: [][2]int, c: [2]int) -> int {
  m := max(int)
  mi := -1
  for x,i in a {
    (c.x == x.x || c.y == x.y) or_continue
    d0 := x - c
    d := abs(d0.x + d0.y)
    if d < m { m = d; mi = i }
  }
  return mi
}
