let () =
  let p = new People.people "Messi" in

  let d = new Doctor.doctor "Zidane" 20 p 10 in

  let dalek1 = new Dalek.dalek "Nagashima" in
  let p1 = new People.people "Kawasaki" in

  p#talk;
  print_endline p#to_string;
  d#talk;
  print_endline d#to_string;

  dalek1#talk;
  print_endline dalek1#to_string;
  dalek1#exterminate p1;
  print_endline dalek1#to_string;
  d#use_sonic_screwdriver;
  dalek1#die
