(* filepath: dalek.ml *)
class dalek (input_name : string) =
  object (self)
    val name : string = input_name
    val mutable hp : int = 100
    val mutable shield : bool = true

    method to_string =
      "Name:" ^ name ^ ", HP: " ^ string_of_int hp ^ ", Shield: "
      ^ string_of_bool shield

    method talk =
      Random.self_init ();
      let num = Random.int 3 in
      print_endline
        (if num = 0 then "Explain! Explain!"
         else if num = 1 then "Exterminate! Exterminate!"
         else if num = 2 then "I obey!"
         else "You are the Doctor! You are the enemy of the Daleks!")

    method exterminate (p : People.people) =
      p#die;
      shield <- (if shield then false else true)

    method die = print_endline "Emergency Temporal Shift!"
    initializer print_endline ("Creating new dalek: " ^ name)
  end
