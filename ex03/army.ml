(* 共通の型を定義 *)
type army_member =
  | P of People.people
  | Doc of Doctor.doctor
  | Dal of Dalek.dalek

class army =
  object (self)
    val mutable members : army_member list = []
    method add (member : army_member) : unit = members <- member :: members

    method delete : unit =
      match members with [] -> () | _ :: rest -> members <- rest

    method show_members =
      List.iter
        (fun member ->
          match member with
          | P p -> p#talk
          | Doc d -> d#talk
          | Dal dal -> dal#talk)
        members

    method num_members = List.length members
  end
