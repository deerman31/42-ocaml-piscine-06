let () =
  let p = new People.people "Messi" in

  let d = new Doctor.doctor "Zidane" 20 p 10 in

  let dalek = new Dalek.dalek "Nagashima" in

  let army = new Army.army in

  print_endline ("TEST <add>");
  print_endline (string_of_int army#num_members);
  army#add (P p);
  print_endline (string_of_int army#num_members);
  army#add (Doc d);
  print_endline (string_of_int army#num_members);
  army#add (Dal dalek);
  print_endline (string_of_int army#num_members);
  army#show_members;
  print_endline ("---------------");

  print_endline ("TEST <delete>");
  print_endline (string_of_int army#num_members);
  army#delete;
  print_endline (string_of_int army#num_members);
  army#delete;
  print_endline (string_of_int army#num_members);
  army#delete;
  print_endline (string_of_int army#num_members);
  army#delete;
  print_endline ("---------------");

  army#show_members
