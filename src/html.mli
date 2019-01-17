type 'a t = 'a  BsOakVirtualDom.Virtual_dom.Node.t

val text : string -> 'a t
val node : string -> 'a Property.t list -> 'a t list -> 'a t
val map : ('a -> 'b) -> 'a t -> 'b t

(* Headings *)

val h1 : 'a Property.t list -> 'a t list -> 'a t
val h2 : 'a Property.t list -> 'a t list -> 'a t
val h3 : 'a Property.t list -> 'a t list -> 'a t
val h4 : 'a Property.t list -> 'a t list -> 'a t
val h5 : 'a Property.t list -> 'a t list -> 'a t
val h6 : 'a Property.t list -> 'a t list -> 'a t

(* Grouping Content *)

val div : 'a Property.t list -> 'a t list -> 'a t
val p : 'a Property.t list -> 'a t list -> 'a t
val hr : 'a Property.t list -> 'a t list -> 'a t
val pre : 'a Property.t list -> 'a t list -> 'a t
val blockquote : 'a Property.t list -> 'a t list -> 'a t

(* Text *)

val span : 'a Property.t list -> 'a t list -> 'a t
val a : 'a Property.t list -> 'a t list -> 'a t
val code : 'a Property.t list -> 'a t list -> 'a t
val em : 'a Property.t list -> 'a t list -> 'a t
val strong : 'a Property.t list -> 'a t list -> 'a t
val i : 'a Property.t list -> 'a t list -> 'a t
val b : 'a Property.t list -> 'a t list -> 'a t
val u : 'a Property.t list -> 'a t list -> 'a t
val sub : 'a Property.t list -> 'a t list -> 'a t
val sup : 'a Property.t list -> 'a t list -> 'a t
val br : 'a Property.t list -> 'a t list -> 'a t

(* Lists *)

val ol : 'a Property.t list -> 'a t list -> 'a t
val ul : 'a Property.t list -> 'a t list -> 'a t
val li : 'a Property.t list -> 'a t list -> 'a t
val dl : 'a Property.t list -> 'a t list -> 'a t
val dt : 'a Property.t list -> 'a t list -> 'a t
val dd : 'a Property.t list -> 'a t list -> 'a t

(* Embedded Content *)

val img : 'a Property.t list -> 'a t list -> 'a t
val iframe : 'a Property.t list -> 'a t list -> 'a t
val canvas : 'a Property.t list -> 'a t list -> 'a t
val math : 'a Property.t list -> 'a t list -> 'a t

(* Inputs *)

val form : 'a Property.t list -> 'a t list -> 'a t
val input : 'a Property.t list -> 'a t list -> 'a t
val textarea : 'a Property.t list -> 'a t list -> 'a t
val button : 'a Property.t list -> 'a t list -> 'a t
val select : 'a Property.t list -> 'a t list -> 'a t
val option : 'a Property.t list -> 'a t list -> 'a t

(* Sections *)

val section : 'a Property.t list -> 'a t list -> 'a t
val nav : 'a Property.t list -> 'a t list -> 'a t
val article : 'a Property.t list -> 'a t list -> 'a t
val aside : 'a Property.t list -> 'a t list -> 'a t
val header : 'a Property.t list -> 'a t list -> 'a t
val footer : 'a Property.t list -> 'a t list -> 'a t
val address : 'a Property.t list -> 'a t list -> 'a t
val main : 'a Property.t list -> 'a t list -> 'a t
val body : 'a Property.t list -> 'a t list -> 'a t

(* Figures *)

val figure : 'a Property.t list -> 'a t list -> 'a t
val figcaption : 'a Property.t list -> 'a t list -> 'a t

(* Tables *)

val table : 'a Property.t list -> 'a t list -> 'a t
val caption : 'a Property.t list -> 'a t list -> 'a t
val colgroup : 'a Property.t list -> 'a t list -> 'a t
val col : 'a Property.t list -> 'a t list -> 'a t
val tbody : 'a Property.t list -> 'a t list -> 'a t
val thead : 'a Property.t list -> 'a t list -> 'a t
val tfoot : 'a Property.t list -> 'a t list -> 'a t
val tr : 'a Property.t list -> 'a t list -> 'a t
val td : 'a Property.t list -> 'a t list -> 'a t
val th : 'a Property.t list -> 'a t list -> 'a t

(* Less Common Elements *)

val fieldset : 'a Property.t list -> 'a t list -> 'a t
val legend : 'a Property.t list -> 'a t list -> 'a t
val label : 'a Property.t list -> 'a t list -> 'a t
val datalist : 'a Property.t list -> 'a t list -> 'a t
val optgroup : 'a Property.t list -> 'a t list -> 'a t
val keygen : 'a Property.t list -> 'a t list -> 'a t
val output : 'a Property.t list -> 'a t list -> 'a t
val progress : 'a Property.t list -> 'a t list -> 'a t
val meter : 'a Property.t list -> 'a t list -> 'a t

(* Audio & Video *)

val audio : 'a Property.t list -> 'a t list -> 'a t
val video : 'a Property.t list -> 'a t list -> 'a t
val source : 'a Property.t list -> 'a t list -> 'a t
val track : 'a Property.t list -> 'a t list -> 'a t

(* Embedded Objects *)

val embed : 'a Property.t list -> 'a t list -> 'a t
val object' : 'a Property.t list -> 'a t list -> 'a t
val param : 'a Property.t list -> 'a t list -> 'a t

(* Text Edits *)

val ins : 'a Property.t list -> 'a t list -> 'a t
val del : 'a Property.t list -> 'a t list -> 'a t

(* Semantic Text *)

val small : 'a Property.t list -> 'a t list -> 'a t
val cite : 'a Property.t list -> 'a t list -> 'a t
val dfn : 'a Property.t list -> 'a t list -> 'a t
val abbr : 'a Property.t list -> 'a t list -> 'a t
val time : 'a Property.t list -> 'a t list -> 'a t
val var : 'a Property.t list -> 'a t list -> 'a t
val samp : 'a Property.t list -> 'a t list -> 'a t
val kbd : 'a Property.t list -> 'a t list -> 'a t
val s : 'a Property.t list -> 'a t list -> 'a t
val q : 'a Property.t list -> 'a t list -> 'a t

(* Less Common Text Tags *)

val mark : 'a Property.t list -> 'a t list -> 'a t
val ruby : 'a Property.t list -> 'a t list -> 'a t
val rt : 'a Property.t list -> 'a t list -> 'a t
val rp : 'a Property.t list -> 'a t list -> 'a t
val bdi : 'a Property.t list -> 'a t list -> 'a t
val bdo : 'a Property.t list -> 'a t list -> 'a t
val wbr : 'a Property.t list -> 'a t list -> 'a t

(* Interactive Elements *)

val details : 'a Property.t list -> 'a t list -> 'a t
val summary : 'a Property.t list -> 'a t list -> 'a t
val menuitem : 'a Property.t list -> 'a t list -> 'a t
val menu : 'a Property.t list -> 'a t list -> 'a t