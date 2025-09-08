
let words = ["bella"; "label"; "roller"]

module CharMap = Map.Make (Char)

let rec str2map map str =
  if String.length str = 0 then map
  else
    let c = String.get str 0 in
    let new_map =
      match CharMap.find_opt c map with
      | None -> CharMap.add c 1 map
      | Some count -> CharMap.add c (count + 1) map
    in
    str2map new_map (String.sub str 1 (String.length str - 1))


