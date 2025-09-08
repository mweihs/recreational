package main

import "core:fmt"
import "core:strings"
import "core:strconv"

data := "3[a]2[bc]"

main :: proc() {
  fmt.println(decode(data))
}

decode :: proc(s: string) -> string {
  sb : strings.Builder
  for chunk in strings.split(s, "]") {
    sn, _, r := strings.partition(chunk, "[")
    n := strconv.parse_int(sn) or_continue
    strings.write_string(&sb, strings.repeat(r, n))
  }
  return strings.to_string(sb)
}
