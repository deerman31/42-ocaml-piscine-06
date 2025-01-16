class doctor (input_name : string) (input_age : int)
  (input_people : People.people) (input_hp : int) =
  object (self)
    val name : string = input_name
    val mutable age : int = input_age
    val sidekick : People.people = input_people
    val mutable hp : int = input_hp

    method to_string : string =
      "Name: " ^ name ^ ", Age: " ^ string_of_int age ^ ", HP: "
      ^ string_of_int hp ^ ", Sidekick: " ^ sidekick#to_string

    method talk : unit = print_endline "Hi! I’m the Doctor!"

    method travel_in_time (start : int) (arrival : int) : unit =
      age <- age + arrival - start;
      print_endline
        "\n\
        \      ----------------------------\n\
        \      |  ---------------------   |\n\
        \      |  | POLICE PUBLIC BOX |   |\n\
        \      |  |        CALL       |   |\n\
        \      |  ---------------------   |\n\
        \      |                          |\n\
        \      |                          |\n\
        \      |                          |\n\
        \      |                          |\n\
        \      |                          |\n\
        \      |                          |\n\
        \      |                          |\n\
        \      |                          |\n\
        \      ----------------------------\n\
        \      "

    method use_sonic_screwdriver : unit =
      print_endline "Whiiiiwhiiiwhiii Whiiiiwhiiiwhiii Whiiiiwhiiiwhiii"

    method private regenerate : unit = hp <- 100

    method regenerate_test : unit =
      print_endline "TEST <regenerate>";
      print_endline "BEFORE";
      print_endline (string_of_int hp);
      self#regenerate;
      print_endline "AFTER";
      print_endline (string_of_int hp)

    initializer print_endline ("Creating new doctor: " ^ name)
  end
