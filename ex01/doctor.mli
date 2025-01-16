class doctor : string -> int -> People.people -> int -> object
  val name : string
  val mutable age : int
  val sidekick : People.people
  val mutable hp : int
  method to_string : string
  method talk : unit
  method travel_in_time : int -> int -> unit
  method use_sonic_screwdriver : unit
  method private regenerate : unit
  method regenerate_test : unit
end
