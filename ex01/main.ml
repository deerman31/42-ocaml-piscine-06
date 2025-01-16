let () =
  let p = new People.people "Messi" in

  let d = new Doctor.doctor "Zidane" 20 p 10 in
  d#talk;
  print_endline d#to_string;
  d#travel_in_time 2000 2030;
  print_endline d#to_string;
  d#use_sonic_screwdriver;
  d#regenerate_test
