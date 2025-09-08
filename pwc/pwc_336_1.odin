package main

import "core:fmt"
import "core:strconv"

Data :: struct {
  d : []string,
  r : int,
}

test_data : []Data = {
  {{"5","2","C","D","+"}, 30},
  {{"5","-2","4","C","D","9","+","+"}, 27},
  {{"7","D","D","C","+","3"}, 45},
  {{"-5","-10","+","D","C","+"}, -55},
  {{"3","6","+","D","C","8","+","D","-2","C","+"}, 128},
}

main :: proc() {
  stack : [dynamic]int
  for d in test_data {
    for c in d.d {
      switch c {
        case "C": if len(stack) > 0 do pop(&stack)
        case "D": append(&stack, stack[len(stack)-1]*2)
        case "+": if len(stack) >= 2 do append(&stack, stack[len(stack)-1]+stack[len(stack)-2])
        case: append(&stack, strconv.parse_int(c) or_continue)
      }
    }
    r := 0
    for c in stack do r += c
    clear(&stack)
    fmt.println(r == d.r ? "[OK]" : "[FAIL]")
  }
}
