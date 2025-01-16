class people name =
  object
    val _name : string = name
    val _hp : int = 100
    method to_string = "Name:" ^ _name ^ ", HP: " ^ string_of_int _hp
    method talk = print_endline ("I’m " ^ name ^ "! Do you know the Doctor?")
    method die = print_endline "Aaaarghh!"
    initializer print_endline ("Creating new person: " ^ _name)
  end
