package main

import "core:fmt"

words : []string = {
  "weekly",
  "perl",
  "challenge",
}

main :: proc() {
  m : map[rune]int
  for w in words {
    res := true
    for c in w do m[c] += 1
    for _,v in m { if v % 2 == 0 do res = false }
    fmt.printf("%s: %v\n", w, res)
    clear(&m)
  }
}
