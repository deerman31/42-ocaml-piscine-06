let () =
  let p = new People.people "Zidane" in
  print_endline p#to_string;
  p#talk;
  p#die
