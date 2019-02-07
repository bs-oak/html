type 'a t = 'a BsOakVirtualDom.Virtual_dom.Attribute.t

(* primitives *)

val styles : (string * string) list -> 'a t
val property : string -> BsOakJson.Encode.value -> 'a t
val attribute : string -> string -> 'a t
val map : ('a -> 'b) -> 'a t -> 'b t

(* super common attributes *)

val class' : string -> 'a t
val class_list : (string * bool) list -> 'a t
val id : string -> 'a t
val title : string -> 'a t
val hidden : bool -> 'a t

(* inputs *)

val type' : string -> 'a t
val value : string -> 'a t
val checked : bool -> 'a t
val placeholder : string -> 'a t
val selected : bool -> 'a t

(* input helpers *)

val accept : string -> 'a t
val accept_charset : string -> 'a t
val action : string -> 'a t
val autocomplete : bool -> 'a t
val autofocus : bool -> 'a t
val disabled : bool -> 'a t
val enctype : string -> 'a t
val list : string -> 'a t
val maxlength : int -> 'a t
val minlength : int -> 'a t
val method' : string -> 'a t
val multiple : bool -> 'a t
val name : string -> 'a t
val novalidate : bool -> 'a t
val pattern : string -> 'a t
val readonly : bool -> 'a t
val required : bool -> 'a t
val size : int -> 'a t
val for' : string -> 'a t
val form : string -> 'a t

(* input ranges *)

val max : string -> 'a t
val min : string -> 'a t
val step : string -> 'a t

(* input text areas *)

val cols : int -> 'a t
val rows : int -> 'a t
val wrap : string -> 'a t

(* links and areas *)

val href : string -> 'a t
val target : string -> 'a t
val download : string -> 'a t
val hreflang : string -> 'a t
val media : string -> 'a t
val ping : string -> 'a t
val rel : string -> 'a t

(* maps *)

val ismap : bool -> 'a t
val usemap : string -> 'a t
val shape : string -> 'a t
val coords : string -> 'a t

(* embedded content *)

val src : string -> 'a t
val height : int -> 'a t
val width : int -> 'a t
val alt : string -> 'a t

(* embedded content - audio and video *)

val autoplay : bool -> 'a t
val controls : bool -> 'a t
val loop : bool -> 'a t
val preload : string -> 'a t
val poster : string -> 'a t
val default : bool -> 'a t
val kind : string -> 'a t
val srclang : string -> 'a t

(* iframes *)

val sandbox : string -> 'a t
val srcdoc : string -> 'a t

(* ordered lists *)

val reversed : bool -> 'a t
val start : int -> 'a t

(* tables *)

val align : string -> 'a t
val colspan : int -> 'a t
val rowspan : int -> 'a t
val headers : string -> 'a t
val scope : string -> 'a t

(* less common global attributes *)

val accesskey : string -> 'a t
val contenteditable : bool -> 'a t
val contextmenu : string -> 'a t
val dir : string -> 'a t
val draggable : string -> 'a t
val dropzone : string -> 'a t
val itemprop : string -> 'a t
val lang : string -> 'a t
val spellcheck  : bool -> 'a t
val tabindex : int -> 'a t

(* miscellaneous *)

val cite : string -> 'a t
val datetime : string -> 'a t
val pubdate : string -> 'a t
val manifest : string -> 'a t

(* events - mouse *)

val on_click : 'a -> 'a t
val on_double_click : 'a -> 'a t
val on_mouse_down : 'a -> 'a t
val on_mouse_up : 'a -> 'a t
val on_mouse_enter : 'a -> 'a t
val on_mouse_leave : 'a -> 'a t
val on_mouse_over : 'a -> 'a t
val on_mouse_out : 'a -> 'a t

(* events - forms *)

val on_input : (string -> 'a) -> 'a t
val on_check : (bool -> 'a) -> 'a t
val on_submit : 'a -> 'a t
val on_file_change : (BsOakFile.File_list.t -> 'a) -> 'a t 

(* events - focus *)

val on_blur : 'a -> 'a t
val on_focus : 'a -> 'a t

(* events - custom *)

val on : string -> 'a BsOakJson.Decode.decoder -> 'a t
val prevent_default_on : string -> ('a * bool) BsOakJson.Decode.decoder -> 'a t
val stop_propagation_on : string -> ('a * bool) BsOakJson.Decode.decoder -> 'a t
val custom : string -> 'a BsOakVirtualDom.Virtual_dom.Attribute.options BsOakJson.Decode.decoder -> 'a t

(* events - custom decoders *)

val target_value : string BsOakJson.Decode.decoder
val target_checked : bool BsOakJson.Decode.decoder
val key_code : int BsOakJson.Decode.decoder