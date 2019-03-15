type 'a t = 'a  BsOakVirtualDom.Virtual_dom.Node.t

val text : string -> 'a t
val node : string -> 'a Attribute.t list -> 'a t list -> 'a t
val map : ('a -> 'b) -> 'a t -> 'b t

(* Headings *)

val h1 : 'a Attribute.t list -> 'a t list -> 'a t
val h2 : 'a Attribute.t list -> 'a t list -> 'a t
val h3 : 'a Attribute.t list -> 'a t list -> 'a t
val h4 : 'a Attribute.t list -> 'a t list -> 'a t
val h5 : 'a Attribute.t list -> 'a t list -> 'a t
val h6 : 'a Attribute.t list -> 'a t list -> 'a t

(* Grouping Content *)

val div : 'a Attribute.t list -> 'a t list -> 'a t
val p : 'a Attribute.t list -> 'a t list -> 'a t
val hr : 'a Attribute.t list -> 'a t list -> 'a t
val pre : 'a Attribute.t list -> 'a t list -> 'a t
val blockquote : 'a Attribute.t list -> 'a t list -> 'a t

(* Text *)

val span : 'a Attribute.t list -> 'a t list -> 'a t
val a : 'a Attribute.t list -> 'a t list -> 'a t
val code : 'a Attribute.t list -> 'a t list -> 'a t
val em : 'a Attribute.t list -> 'a t list -> 'a t
val strong : 'a Attribute.t list -> 'a t list -> 'a t
val i : 'a Attribute.t list -> 'a t list -> 'a t
val b : 'a Attribute.t list -> 'a t list -> 'a t
val u : 'a Attribute.t list -> 'a t list -> 'a t
val sub : 'a Attribute.t list -> 'a t list -> 'a t
val sup : 'a Attribute.t list -> 'a t list -> 'a t
val br : 'a Attribute.t list -> 'a t list -> 'a t

(* Lists *)

val ol : 'a Attribute.t list -> 'a t list -> 'a t
val ul : 'a Attribute.t list -> 'a t list -> 'a t
val li : 'a Attribute.t list -> 'a t list -> 'a t
val dl : 'a Attribute.t list -> 'a t list -> 'a t
val dt : 'a Attribute.t list -> 'a t list -> 'a t
val dd : 'a Attribute.t list -> 'a t list -> 'a t

(* Embedded Content *)

val img : 'a Attribute.t list -> 'a t list -> 'a t
val iframe : 'a Attribute.t list -> 'a t list -> 'a t
val canvas : 'a Attribute.t list -> 'a t list -> 'a t
val math : 'a Attribute.t list -> 'a t list -> 'a t

(* Inputs *)

val form : 'a Attribute.t list -> 'a t list -> 'a t
val input : 'a Attribute.t list -> 'a t list -> 'a t
val textarea : 'a Attribute.t list -> 'a t list -> 'a t
val button : 'a Attribute.t list -> 'a t list -> 'a t
val select : 'a Attribute.t list -> 'a t list -> 'a t
val option : 'a Attribute.t list -> 'a t list -> 'a t

(* Sections *)

val section : 'a Attribute.t list -> 'a t list -> 'a t
val nav : 'a Attribute.t list -> 'a t list -> 'a t
val article : 'a Attribute.t list -> 'a t list -> 'a t
val aside : 'a Attribute.t list -> 'a t list -> 'a t
val header : 'a Attribute.t list -> 'a t list -> 'a t
val footer : 'a Attribute.t list -> 'a t list -> 'a t
val address : 'a Attribute.t list -> 'a t list -> 'a t
val main : 'a Attribute.t list -> 'a t list -> 'a t

(* Figures *)

val figure : 'a Attribute.t list -> 'a t list -> 'a t
val figcaption : 'a Attribute.t list -> 'a t list -> 'a t

(* Tables *)

val table : 'a Attribute.t list -> 'a t list -> 'a t
val caption : 'a Attribute.t list -> 'a t list -> 'a t
val colgroup : 'a Attribute.t list -> 'a t list -> 'a t
val col : 'a Attribute.t list -> 'a t list -> 'a t
val tbody : 'a Attribute.t list -> 'a t list -> 'a t
val thead : 'a Attribute.t list -> 'a t list -> 'a t
val tfoot : 'a Attribute.t list -> 'a t list -> 'a t
val tr : 'a Attribute.t list -> 'a t list -> 'a t
val td : 'a Attribute.t list -> 'a t list -> 'a t
val th : 'a Attribute.t list -> 'a t list -> 'a t

(* Less Common Elements *)

val fieldset : 'a Attribute.t list -> 'a t list -> 'a t
val legend : 'a Attribute.t list -> 'a t list -> 'a t
val label : 'a Attribute.t list -> 'a t list -> 'a t
val datalist : 'a Attribute.t list -> 'a t list -> 'a t
val optgroup : 'a Attribute.t list -> 'a t list -> 'a t
val output : 'a Attribute.t list -> 'a t list -> 'a t
val progress : 'a Attribute.t list -> 'a t list -> 'a t
val meter : 'a Attribute.t list -> 'a t list -> 'a t

(* Audio & Video *)

val audio : 'a Attribute.t list -> 'a t list -> 'a t
val video : 'a Attribute.t list -> 'a t list -> 'a t
val source : 'a Attribute.t list -> 'a t list -> 'a t
val track : 'a Attribute.t list -> 'a t list -> 'a t

(* Embedded Objects *)

val embed : 'a Attribute.t list -> 'a t list -> 'a t
val object' : 'a Attribute.t list -> 'a t list -> 'a t
val param : 'a Attribute.t list -> 'a t list -> 'a t

(* Text Edits *)

val ins : 'a Attribute.t list -> 'a t list -> 'a t
val del : 'a Attribute.t list -> 'a t list -> 'a t

(* Semantic Text *)

val small : 'a Attribute.t list -> 'a t list -> 'a t
val cite : 'a Attribute.t list -> 'a t list -> 'a t
val dfn : 'a Attribute.t list -> 'a t list -> 'a t
val abbr : 'a Attribute.t list -> 'a t list -> 'a t
val time : 'a Attribute.t list -> 'a t list -> 'a t
val var : 'a Attribute.t list -> 'a t list -> 'a t
val samp : 'a Attribute.t list -> 'a t list -> 'a t
val kbd : 'a Attribute.t list -> 'a t list -> 'a t
val s : 'a Attribute.t list -> 'a t list -> 'a t
val q : 'a Attribute.t list -> 'a t list -> 'a t

(* Less Common Text Tags *)

val mark : 'a Attribute.t list -> 'a t list -> 'a t
val ruby : 'a Attribute.t list -> 'a t list -> 'a t
val rt : 'a Attribute.t list -> 'a t list -> 'a t
val rp : 'a Attribute.t list -> 'a t list -> 'a t
val bdi : 'a Attribute.t list -> 'a t list -> 'a t
val bdo : 'a Attribute.t list -> 'a t list -> 'a t
val wbr : 'a Attribute.t list -> 'a t list -> 'a t

(* Interactive Elements *)

val details : 'a Attribute.t list -> 'a t list -> 'a t
val summary : 'a Attribute.t list -> 'a t list -> 'a t
val menuitem : 'a Attribute.t list -> 'a t list -> 'a t
val menu : 'a Attribute.t list -> 'a t list -> 'a t

(* Keyed Nodes *)

val keyed_node : string -> 'a Attribute.t list -> (string * 'a t) list -> 'a t
val keyed_ol : 'a Attribute.t list -> (string * 'a t) list -> 'a t
val keyed_ul : 'a Attribute.t list -> (string * 'a t) list -> 'a t