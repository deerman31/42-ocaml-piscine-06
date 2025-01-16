class people input_name =
  object
    val name : string = input_name
    val hp : int = 100
    method to_string = "Name:" ^ name ^ ", HP: " ^ string_of_int hp
    method talk = print_endline ("I’m " ^ name ^ "! Do you know the Doctor?")
    method die = print_endline "Aaaarghh!"
    initializer print_endline ("Creating new person: " ^ name)
  end
