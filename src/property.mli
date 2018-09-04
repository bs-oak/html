type 'a t = 'a BsOakVirtualDom.Virtual_dom.Property.t

val create : string -> BsOakJson.Encode.value -> 'a t

val string : string -> string -> 'a t

val int : string -> int -> 'a t

val float : string -> float -> 'a t

val bool : string -> bool -> 'a t

val map : ('a -> 'b) -> 'a t -> 'b t

val style : (string * string) list -> 'a t

val attribute : string -> string -> 'a t

val class' : string -> 'a t

val class_list : (string * bool) list -> 'a t

val href : string -> 'a t

val id : string -> 'a t

val title : string -> 'a t

val hidden : bool -> 'a t

val type' : string -> 'a t

val value : string -> 'a t

val default_value : string -> 'a t

val checked : bool -> 'a t

val placeholder : string -> 'a t

val selected : bool -> 'a t

val action : string -> 'a t

val disabled : bool -> 'a t

val method' : string -> 'a t

val name : string -> 'a t

(* events *)

val target_value : string BsOakJson.Decode.decoder

val on : string -> 'a BsOakJson.Decode.decoder -> 'a t

val prevent_default_on : string -> ('a * bool) BsOakJson.Decode.decoder -> 'a t

val stop_propagation_on : string -> ('a * bool) BsOakJson.Decode.decoder -> 'a t

val on_click : 'a -> 'a t

val on_submit : 'a -> 'a t

val on_input : (string -> 'a) -> 'a t

val on_check : (bool -> 'a) -> 'a t

val on_focus : 'a -> 'a t

val on_blur : 'a -> 'a t

val on_file_change : (BsOakFile.File_list.t -> 'a) -> 'a t