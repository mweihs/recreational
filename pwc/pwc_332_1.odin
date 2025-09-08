package main

import "core:fmt"
import "core:strings"
import "core:strconv"

dates : []string = {
  "2025-07-26",
  "2000-02-20",
  "2024-12-31",
}

main :: proc() {
  ds : [dynamic]int
  for s in dates {
    for d in strings.split(s, "-") {
      append(&ds, strconv.parse_int(d) or_continue)
    }
    fmt.printf("%b-%b-%b\n", ds[0],ds[1],ds[2])
    clear(&ds)
  }
}
