package main

import "core:fmt"

data :: struct { l : []int, a, b: int }

test_data : []data = {
  {{-2, 0, 3,-5, 2,-1}, 0, 2},  // 1
  {{ 1,-2, 3,-4, 5   }, 1, 3},  // -3
  {{ 1, 0, 2,-1, 3   }, 3, 4},  // 2
  {{-5, 4,-3, 2,-1, 0}, 0, 3},  // -2
  {{-1, 0, 2,-3,-2, 1}, 0, 2},  // 1
}

main :: proc() { for x in test_data do fmt.println(range_sum(x.l, x.a, x.b)) }

range_sum :: proc(l: []int, a,b: int) -> (r: int) { for x in l[a:b+1] do r += x; return }
